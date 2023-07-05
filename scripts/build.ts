const __dirname = new URL(".", import.meta.url).pathname;

if (import.meta.main) {
  main();
}

async function main() {
  const response = await fetch(
    "https://api.github.com/repos/elwood-studio/cli/releases/latest",
  );
  const data = await response.json() as Data;
  const verison = data.name;
  const assets: Assets = {
    "linux-arm64": { url: "", sha256: "" },
    "linux-x64": { url: "", sha256: "" },
    "macos-x64": { url: "", sha256: "" },
  };

  for (const asset of data.assets) {
    const name = asset.name.replace(/^elwood-/, "").replace(
      /\.zip/,
      "",
    )
      .replace(/\.sha256/, "") as keyof Assets;

    if (asset.name.includes(".sha25")) {
      assets[name].sha256 = await (await fetch(asset.browser_download_url))
        .text();
    } else if (asset.name.includes(".zip")) {
      assets[name].url = asset.browser_download_url;
    }
  }

  await Deno.writeTextFile(
    __dirname + "/../elwood.rb",
    createFormula(verison, assets),
  );
}

type Data = {
  name: string;
  assets: Array<{
    name: string;
    browser_download_url: string;
  }>;
};

type Assets = Record<"linux-arm64" | "linux-x64" | "macos-x64", {
  url: string;
  sha256: string;
}>;

export function createFormula(version: string, assets: Assets) {
  return `
class Elwood < Formula
  desc "Elwood CLI"
  homepage "https://elwood.studio/docs/cli"
  version "${version}"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "${assets["macos-x64"].url}"
      sha256 "${assets["macos-x64"].sha256}"

      def install
        bin.install "elwood"
      end
    end
    if Hardware::CPU.intel?
      url "${assets["macos-x64"].url}"
      sha256 "${assets["macos-x64"].sha256}"

      def install
        bin.install "elwood"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "${assets["linux-arm64"].url}"
      sha256 "${assets["linux-arm64"].sha256}"

      def install
        bin.install "elwood"
      end
    end
    if Hardware::CPU.intel?
      url "${assets["linux-x64"].url}"
      sha256 "${assets["linux-x64"].sha256}"

      def install
        bin.install "elwood"
      end
    end
  end
end
`.trim();
}
