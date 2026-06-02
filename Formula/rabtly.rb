class Rabtly < Formula
  desc "Self-hosted mesh VPN built on WireGuard"
  homepage "https://rabtly.cloud"
  version "1.4.10.063"

  on_macos do
    on_arm do
      url "https://dl.rabtly.cloud/v1.4.10.063/rabtly_darwin_arm64"
      sha256 "111721dcaf79a17c69072114e65bd9e2d08668b9e1f891e831548800cb85094a" # arm64
    end
    on_intel do
      url "https://dl.rabtly.cloud/v1.4.10.063/rabtly_darwin_amd64"
      sha256 "28a9bce1c32e439f4ff0e2a8b13aba47ca9aed87fa486a41ec634ca9f7889981" # amd64
    end
  end

  def install
    bin.install Dir["rabtly*"].first => "rabtly"
  end

  test do
    system "#{bin}/rabtly", "version"
  end
end