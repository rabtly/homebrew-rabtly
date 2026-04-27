class Rabtly < Formula
  desc "Self-hosted mesh VPN built on WireGuard"
  homepage "https://rabtly.cloud"
  version "0.2.3"

  on_macos do
    on_arm do
      url "https://dl.rabtly.cloud/v0.2.3/rabtly_darwin_arm64"
      sha256 "7fbec49fcbaa8ed2bca75e44b955a8a148c2172a3c0ccf9f1c7854ba62897c32"
    end
    on_intel do
      url "https://dl.rabtly.cloud/v0.2.3/rabtly_darwin_amd64"
      sha256 "bd8589f75af1db43bf98caa875199362ae1165bd4ba49ef9b03f12a3ab4ab0a5"
    end
  end

  def install
    bin.install Dir["rabtly*"].first => "rabtly"
  end

  test do
    system "#{bin}/rabtly", "version"
  end
end
