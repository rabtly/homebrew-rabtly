class Rabtly < Formula
  desc "Self-hosted mesh VPN built on WireGuard"
  homepage "https://rabtly.cloud"
  version "1.4.10.086"

  on_macos do
    on_arm do
      url "https://dl.rabtly.cloud/v1.4.10.086/rabtly_darwin_arm64"
      sha256 "44028256b6f5df3bd7478aba7b4410518df129d846f4dc0b885c7d08621e838c" # arm64
    end
    on_intel do
      url "https://dl.rabtly.cloud/v1.4.10.086/rabtly_darwin_amd64"
      sha256 "db926a5220fc24ca6fc183cb2afddfc9e5b5c5674541557339e8e47bd6c7c38c" # amd64
    end
  end

  def install
    bin.install Dir["rabtly*"].first => "rabtly"
  end

  test do
    system "#{bin}/rabtly", "version"
  end
end