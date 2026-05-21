class Rabtly < Formula
  desc "Self-hosted mesh VPN built on WireGuard"
  homepage "https://rabtly.cloud"
  version "1.4.10.036"

  on_macos do
    on_arm do
      url "https://dl.rabtly.cloud/v1.4.10.036/rabtly_darwin_arm64"
      sha256 "2c56bc14a1a7d6b475ec75b98ecfe82008d9cb0715a06946bbbf1e6a47276750" # arm64
    end
    on_intel do
      url "https://dl.rabtly.cloud/v1.4.10.036/rabtly_darwin_amd64"
      sha256 "7ee28875dcb67f9ecfbcf870538dcaa0efe6bfff94938bd3fa98de899b26282f" # amd64
    end
  end

  def install
    bin.install Dir["rabtly*"].first => "rabtly"
  end

  test do
    system "#{bin}/rabtly", "version"
  end
end