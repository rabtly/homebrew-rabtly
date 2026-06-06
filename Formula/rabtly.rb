class Rabtly < Formula
  desc "Self-hosted mesh VPN built on WireGuard"
  homepage "https://rabtly.cloud"
  version "1.4.10.068"

  on_macos do
    on_arm do
      url "https://dl.rabtly.cloud/v1.4.10.068/rabtly_darwin_arm64"
      sha256 "d041ace9fabffcf9a358605bc0b73f431751f5bc007d4686f83e28115d45f4a9" # arm64
    end
    on_intel do
      url "https://dl.rabtly.cloud/v1.4.10.068/rabtly_darwin_amd64"
      sha256 "c2ee9452d73c9820456516b08a63a34042c26131024315fe76a36a31545bde19" # amd64
    end
  end

  def install
    bin.install Dir["rabtly*"].first => "rabtly"
  end

  test do
    system "#{bin}/rabtly", "version"
  end
end