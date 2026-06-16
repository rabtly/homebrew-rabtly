class Rabtly < Formula
  desc "Self-hosted mesh VPN built on WireGuard"
  homepage "https://rabtly.cloud"
  version "1.4.10.085"

  on_macos do
    on_arm do
      url "https://dl.rabtly.cloud/v1.4.10.085/rabtly_darwin_arm64"
      sha256 "db0c013be606115180301d9f6c55569c72ac0cbe694943ba2fe9d225cca238bf" # arm64
    end
    on_intel do
      url "https://dl.rabtly.cloud/v1.4.10.085/rabtly_darwin_amd64"
      sha256 "eb596680ed157cdb3ca6635d7dc03694c847567a9bd68ebdbb553c233172e402" # amd64
    end
  end

  def install
    bin.install Dir["rabtly*"].first => "rabtly"
  end

  test do
    system "#{bin}/rabtly", "version"
  end
end