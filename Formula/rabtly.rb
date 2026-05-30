class Rabtly < Formula
  desc "Self-hosted mesh VPN built on WireGuard"
  homepage "https://rabtly.cloud"
  version "1.4.10.056"

  on_macos do
    on_arm do
      url "https://dl.rabtly.cloud/v1.4.10.056/rabtly_darwin_arm64"
      sha256 "efa06a3d02ab3260ac94d6a4aa65f57cf65f6c74dd5442fcb1304d3b8b48bbe9" # arm64
    end
    on_intel do
      url "https://dl.rabtly.cloud/v1.4.10.056/rabtly_darwin_amd64"
      sha256 "4d75b97fa6d1c8e893cca0f11861f01812f2b4f5e44f350df31bf26d861962d8" # amd64
    end
  end

  def install
    bin.install Dir["rabtly*"].first => "rabtly"
  end

  test do
    system "#{bin}/rabtly", "version"
  end
end