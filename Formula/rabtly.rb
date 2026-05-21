class Rabtly < Formula
  desc "Self-hosted mesh VPN built on WireGuard"
  homepage "https://rabtly.cloud"
  version "1.4.10.037"

  on_macos do
    on_arm do
      url "https://dl.rabtly.cloud/v1.4.10.037/rabtly_darwin_arm64"
      sha256 "351645b9ea53ff12dcd3a1b22d56b708deee2cec5d4d5a71ff7874ed30c0983a" # arm64
    end
    on_intel do
      url "https://dl.rabtly.cloud/v1.4.10.037/rabtly_darwin_amd64"
      sha256 "ccfe8ac4688295107e8cc9fed1acf3f050b28bd3b7673526685905b379dcfb59" # amd64
    end
  end

  def install
    bin.install Dir["rabtly*"].first => "rabtly"
  end

  test do
    system "#{bin}/rabtly", "version"
  end
end