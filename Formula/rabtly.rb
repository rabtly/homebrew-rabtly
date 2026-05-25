class Rabtly < Formula
  desc "Self-hosted mesh VPN built on WireGuard"
  homepage "https://rabtly.cloud"
  version "1.4.10.043"

  on_macos do
    on_arm do
      url "https://dl.rabtly.cloud/v1.4.10.043/rabtly_darwin_arm64"
      sha256 "b306418d751406b3a5da5490d5104a9cb96b73eab563100ff61dc4821950f9b7" # arm64
    end
    on_intel do
      url "https://dl.rabtly.cloud/v1.4.10.043/rabtly_darwin_amd64"
      sha256 "f1e2979a0e6061e52ac2ed402c65205ef8e838e05b511ec9a1b6a7cf97874de5" # amd64
    end
  end

  def install
    bin.install Dir["rabtly*"].first => "rabtly"
  end

  test do
    system "#{bin}/rabtly", "version"
  end
end