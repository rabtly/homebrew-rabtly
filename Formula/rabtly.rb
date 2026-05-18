class Rabtly < Formula
  desc "Self-hosted mesh VPN built on WireGuard"
  homepage "https://rabtly.cloud"
  version "1.4.10.021"

  on_macos do
    on_arm do
      url "https://dl.rabtly.cloud/v1.4.10.021/rabtly_darwin_arm64"
      sha256 "8f7ffa455194f5c2a75ee239f1cd41acb124145a377d95249af53b8928bbba95" # arm64
    end
    on_intel do
      url "https://dl.rabtly.cloud/v1.4.10.021/rabtly_darwin_amd64"
      sha256 "bebb3b9f123544b75811984f0eaa39941e1125ee866ef8cb92da25086773a0bf" # amd64
    end
  end

  def install
    bin.install Dir["rabtly*"].first => "rabtly"
  end

  test do
    system "#{bin}/rabtly", "version"
  end
end