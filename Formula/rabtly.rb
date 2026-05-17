class Rabtly < Formula
  desc "Self-hosted mesh VPN built on WireGuard"
  homepage "https://rabtly.cloud"
  version "1.4.10.004"

  on_macos do
    on_arm do
      url "https://dl.rabtly.cloud/v1.4.10.004/rabtly_darwin_arm64"
      sha256 "61db60d9e069a70f79fd11a69eaaf98844f2d708c275699ab31e5d12b0cb614d" # arm64
    end
    on_intel do
      url "https://dl.rabtly.cloud/v1.4.10.004/rabtly_darwin_amd64"
      sha256 "1ea5495b8466064132ad0029cefeb0a82a8fcc9c47f7301effcf571ffbe2395b" # amd64
    end
  end

  def install
    bin.install Dir["rabtly*"].first => "rabtly"
  end

  test do
    system "#{bin}/rabtly", "version"
  end
end