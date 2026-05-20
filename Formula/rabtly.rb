class Rabtly < Formula
  desc "Self-hosted mesh VPN built on WireGuard"
  homepage "https://rabtly.cloud"
  version "1.4.10.031"

  on_macos do
    on_arm do
      url "https://dl.rabtly.cloud/v1.4.10.031/rabtly_darwin_arm64"
      sha256 "7696003af1cb4ecb38364a12f521c75b0d1c1e6e13c7dc94715c0aaf25298f9f" # arm64
    end
    on_intel do
      url "https://dl.rabtly.cloud/v1.4.10.031/rabtly_darwin_amd64"
      sha256 "67b789bfbc0c6005439aae293f88496d91fc64d69a117d46c15c7659a2321733" # amd64
    end
  end

  def install
    bin.install Dir["rabtly*"].first => "rabtly"
  end

  test do
    system "#{bin}/rabtly", "version"
  end
end