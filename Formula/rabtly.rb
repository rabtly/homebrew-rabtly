class Rabtly < Formula
  desc "Self-hosted mesh VPN built on WireGuard"
  homepage "https://rabtly.cloud"
  version "1.4.10.013"

  on_macos do
    on_arm do
      url "https://dl.rabtly.cloud/v1.4.10.013/rabtly_darwin_arm64"
      sha256 "1ed3ec8c2a7088e048221ed8949bd50aa6a60700cf4c6b160346061acc3aeb29" # arm64
    end
    on_intel do
      url "https://dl.rabtly.cloud/v1.4.10.013/rabtly_darwin_amd64"
      sha256 "4c9d6782cdcd441ac50d385c2cfb72a317e9d5049c6c8cef2cd8f2fc56c86be4" # amd64
    end
  end

  def install
    bin.install Dir["rabtly*"].first => "rabtly"
  end

  test do
    system "#{bin}/rabtly", "version"
  end
end