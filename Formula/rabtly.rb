class Rabtly < Formula
  desc "Self-hosted mesh VPN built on WireGuard"
  homepage "https://rabtly.cloud"
  version "1.4.10.108"

  on_macos do
    on_arm do
      url "https://dl.rabtly.cloud/v1.4.10.108/rabtly_darwin_arm64"
      sha256 "07f7637dd8cec35e8b45e04c5d3cf5d774d052dc55536fb518439741d9f99a1a" # arm64
    end
    on_intel do
      url "https://dl.rabtly.cloud/v1.4.10.108/rabtly_darwin_amd64"
      sha256 "71cb1dcbdeeb9321b26e2ac25351f10d34dec284dc7872d60cb2d61be9e117aa" # amd64
    end
  end

  def install
    bin.install Dir["rabtly*"].first => "rabtly"
  end

  test do
    system "#{bin}/rabtly", "version"
  end
end