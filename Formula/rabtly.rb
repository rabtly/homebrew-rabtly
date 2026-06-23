class Rabtly < Formula
  desc "Self-hosted mesh VPN built on WireGuard"
  homepage "https://rabtly.cloud"
  version "1.4.10.099"

  on_macos do
    on_arm do
      url "https://dl.rabtly.cloud/v1.4.10.099/rabtly_darwin_arm64"
      sha256 "5ba56ef76c374df5d3004857408600648db058e3db9237354b9ad9d6f596872f" # arm64
    end
    on_intel do
      url "https://dl.rabtly.cloud/v1.4.10.099/rabtly_darwin_amd64"
      sha256 "57dd31f45cb5acfc02fa2d3059261c5026d983869c7569e64ec32f7c6d3601a0" # amd64
    end
  end

  def install
    bin.install Dir["rabtly*"].first => "rabtly"
  end

  test do
    system "#{bin}/rabtly", "version"
  end
end