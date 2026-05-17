class Rabtly < Formula
  desc "Self-hosted mesh VPN built on WireGuard"
  homepage "https://rabtly.cloud"
  version "1.4.10.010"

  on_macos do
    on_arm do
      url "https://dl.rabtly.cloud/v1.4.10.010/rabtly_darwin_arm64"
      sha256 "d5ba02d3e94cf7f8b5c8337de7d6f8a04973b766d3d742bb6972f81f82659a0b" # arm64
    end
    on_intel do
      url "https://dl.rabtly.cloud/v1.4.10.010/rabtly_darwin_amd64"
      sha256 "092433ff74a98405081400b6eb23383b711b6a966fc1beab5dc131a557cbc555" # amd64
    end
  end

  def install
    bin.install Dir["rabtly*"].first => "rabtly"
  end

  test do
    system "#{bin}/rabtly", "version"
  end
end