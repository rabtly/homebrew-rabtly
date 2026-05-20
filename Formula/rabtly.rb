class Rabtly < Formula
  desc "Self-hosted mesh VPN built on WireGuard"
  homepage "https://rabtly.cloud"
  version "1.4.10.026"

  on_macos do
    on_arm do
      url "https://dl.rabtly.cloud/v1.4.10.026/rabtly_darwin_arm64"
      sha256 "39cee884fdd58e72f075cfa0fdf444e2f1c90e69ec8556c3e9cb21e1347dcbe8" # arm64
    end
    on_intel do
      url "https://dl.rabtly.cloud/v1.4.10.026/rabtly_darwin_amd64"
      sha256 "ea33dd9ab57309f3ce7223e92d952ea34635d56d78b042e957a709d7d85772c6" # amd64
    end
  end

  def install
    bin.install Dir["rabtly*"].first => "rabtly"
  end

  test do
    system "#{bin}/rabtly", "version"
  end
end