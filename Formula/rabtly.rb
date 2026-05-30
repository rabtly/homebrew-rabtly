class Rabtly < Formula
  desc "Self-hosted mesh VPN built on WireGuard"
  homepage "https://rabtly.cloud"
  version "1.4.10.057"

  on_macos do
    on_arm do
      url "https://dl.rabtly.cloud/v1.4.10.057/rabtly_darwin_arm64"
      sha256 "e4550537f4bfd0f1e321a5cadccebc74ebe39627dfeae0e5e47e3827bcc2af1f" # arm64
    end
    on_intel do
      url "https://dl.rabtly.cloud/v1.4.10.057/rabtly_darwin_amd64"
      sha256 "b3bb784a885acc7e89994387360a36e524c59f0b6fc1755cf766392661f4c422" # amd64
    end
  end

  def install
    bin.install Dir["rabtly*"].first => "rabtly"
  end

  test do
    system "#{bin}/rabtly", "version"
  end
end