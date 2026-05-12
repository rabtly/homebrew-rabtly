class Rabtly < Formula
  desc "Self-hosted mesh VPN built on WireGuard"
  homepage "https://rabtly.cloud"
  version "1.4.9.012"

  on_macos do
    on_arm do
      url "https://dl.rabtly.cloud/v1.4.9.012/rabtly_darwin_arm64"
      sha256 "b489248a70fc5dc00042e83b62d6f61fc280e7d14739567c401a620b8f07c3f0" # arm64
    end
    on_intel do
      url "https://dl.rabtly.cloud/v1.4.9.012/rabtly_darwin_amd64"
      sha256 "67d00a57b873ec732e938f28acc33755c88237c4303bd65d7b9366ca09fa91c1" # amd64
    end
  end

  def install
    bin.install Dir["rabtly*"].first => "rabtly"
  end

  test do
    system "#{bin}/rabtly", "version"
  end
end