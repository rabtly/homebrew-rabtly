class Rabtly < Formula
  desc "Self-hosted mesh VPN built on WireGuard"
  homepage "https://rabtly.cloud"
  version "1.4.10.103"

  on_macos do
    on_arm do
      url "https://dl.rabtly.cloud/v1.4.10.103/rabtly_darwin_arm64"
      sha256 "a9b248f39c219e59efa7261ccfc2cd0c537c4d2680c4099937382c730736d8e4" # arm64
    end
    on_intel do
      url "https://dl.rabtly.cloud/v1.4.10.103/rabtly_darwin_amd64"
      sha256 "4b5dd0c628e324bc2f565eb0101a140e10d7b03d50b0f41bbda34a62ddb3cb25" # amd64
    end
  end

  def install
    bin.install Dir["rabtly*"].first => "rabtly"
  end

  test do
    system "#{bin}/rabtly", "version"
  end
end