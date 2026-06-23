class Rabtly < Formula
  desc "Self-hosted mesh VPN built on WireGuard"
  homepage "https://rabtly.cloud"
  version "1.4.10.102"

  on_macos do
    on_arm do
      url "https://dl.rabtly.cloud/v1.4.10.102/rabtly_darwin_arm64"
      sha256 "759602078c0e43873ce479bb43c36702a6f6a2c624af9a3a9bada7567b104f97" # arm64
    end
    on_intel do
      url "https://dl.rabtly.cloud/v1.4.10.102/rabtly_darwin_amd64"
      sha256 "5e3d9b4d3758ee182fd763c24b680b5b2c2b1d7c635b7895a2c2b85f8eefff1a" # amd64
    end
  end

  def install
    bin.install Dir["rabtly*"].first => "rabtly"
  end

  test do
    system "#{bin}/rabtly", "version"
  end
end