class Rabtly < Formula
  desc "Self-hosted mesh VPN built on WireGuard"
  homepage "https://rabtly.cloud"
  version "1.4.10.082"

  on_macos do
    on_arm do
      url "https://dl.rabtly.cloud/v1.4.10.082/rabtly_darwin_arm64"
      sha256 "32ef2758f35cd9fe797f5c697c22bf3220a2167edf340b7d8c8e6b5770ec60f7" # arm64
    end
    on_intel do
      url "https://dl.rabtly.cloud/v1.4.10.082/rabtly_darwin_amd64"
      sha256 "2d7df68426bafa17e3565949956398217af0cbc661dbf31ec65a8fc293b2032f" # amd64
    end
  end

  def install
    bin.install Dir["rabtly*"].first => "rabtly"
  end

  test do
    system "#{bin}/rabtly", "version"
  end
end