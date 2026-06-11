class Rabtly < Formula
  desc "Self-hosted mesh VPN built on WireGuard"
  homepage "https://rabtly.cloud"
  version "1.4.10.076"

  on_macos do
    on_arm do
      url "https://dl.rabtly.cloud/v1.4.10.076/rabtly_darwin_arm64"
      sha256 "263681913e7dc3475049305cbbd24397b230200586e54f30a89730fbf525c8a9" # arm64
    end
    on_intel do
      url "https://dl.rabtly.cloud/v1.4.10.076/rabtly_darwin_amd64"
      sha256 "0b2daf96fc17679b10c91d01f541a5cbcd112347ddf2e7ace61b21bb93574b13" # amd64
    end
  end

  def install
    bin.install Dir["rabtly*"].first => "rabtly"
  end

  test do
    system "#{bin}/rabtly", "version"
  end
end