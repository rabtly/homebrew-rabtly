class Rabtly < Formula
  desc "Self-hosted mesh VPN built on WireGuard"
  homepage "https://rabtly.cloud"
  version "1.4.10.095"

  on_macos do
    on_arm do
      url "https://dl.rabtly.cloud/v1.4.10.095/rabtly_darwin_arm64"
      sha256 "dc3da1ea769a0399f43dbffaf2aa579972c7a83c9153481009ef3ed9a976831e" # arm64
    end
    on_intel do
      url "https://dl.rabtly.cloud/v1.4.10.095/rabtly_darwin_amd64"
      sha256 "e6caa647a11300de79e2ebadf02b25a7285fe7e35d7e5089a18b155ce0466b61" # amd64
    end
  end

  def install
    bin.install Dir["rabtly*"].first => "rabtly"
  end

  test do
    system "#{bin}/rabtly", "version"
  end
end