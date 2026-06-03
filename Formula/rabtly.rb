class Rabtly < Formula
  desc "Self-hosted mesh VPN built on WireGuard"
  homepage "https://rabtly.cloud"
  version "1.4.10.064"

  on_macos do
    on_arm do
      url "https://dl.rabtly.cloud/v1.4.10.064/rabtly_darwin_arm64"
      sha256 "2fa7cdbd206ed962bb9f73ad68a2a84efc3b446765a063a6112708dbfb7e75e9" # arm64
    end
    on_intel do
      url "https://dl.rabtly.cloud/v1.4.10.064/rabtly_darwin_amd64"
      sha256 "d5424de9c9aaccba089617ef897e913b964795668386cab4dbbb43f6b72585c8" # amd64
    end
  end

  def install
    bin.install Dir["rabtly*"].first => "rabtly"
  end

  test do
    system "#{bin}/rabtly", "version"
  end
end