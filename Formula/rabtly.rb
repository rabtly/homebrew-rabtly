class Rabtly < Formula
  desc "Self-hosted mesh VPN built on WireGuard"
  homepage "https://rabtly.cloud"
  version "1.4.10.084"

  on_macos do
    on_arm do
      url "https://dl.rabtly.cloud/v1.4.10.084/rabtly_darwin_arm64"
      sha256 "01a40b159458e25f6c1b556bff512dcb0099fe39a01ae48749fdd76263da25a4" # arm64
    end
    on_intel do
      url "https://dl.rabtly.cloud/v1.4.10.084/rabtly_darwin_amd64"
      sha256 "397206908ebdc4125acd8a5b6afcdf801fcf569d02a52c3be4e3cfeddec93b75" # amd64
    end
  end

  def install
    bin.install Dir["rabtly*"].first => "rabtly"
  end

  test do
    system "#{bin}/rabtly", "version"
  end
end