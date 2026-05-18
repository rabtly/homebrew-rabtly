class Rabtly < Formula
  desc "Self-hosted mesh VPN built on WireGuard"
  homepage "https://rabtly.cloud"
  version "1.4.10.019"

  on_macos do
    on_arm do
      url "https://dl.rabtly.cloud/v1.4.10.019/rabtly_darwin_arm64"
      sha256 "73a5626dc32f2bbd31179184786af17b2f7b7d196fde9a4ea520945196ec430b" # arm64
    end
    on_intel do
      url "https://dl.rabtly.cloud/v1.4.10.019/rabtly_darwin_amd64"
      sha256 "172447d0e88cdeba67169d57701c37d5d5445526b4c096d7c55928387e121ab0" # amd64
    end
  end

  def install
    bin.install Dir["rabtly*"].first => "rabtly"
  end

  test do
    system "#{bin}/rabtly", "version"
  end
end