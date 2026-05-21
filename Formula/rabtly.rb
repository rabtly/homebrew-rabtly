class Rabtly < Formula
  desc "Self-hosted mesh VPN built on WireGuard"
  homepage "https://rabtly.cloud"
  version "1.4.10.032"

  on_macos do
    on_arm do
      url "https://dl.rabtly.cloud/v1.4.10.032/rabtly_darwin_arm64"
      sha256 "e55d26a76a0eb82e74d7202987acc73e26bec180585892b087c0001c8ada1be9" # arm64
    end
    on_intel do
      url "https://dl.rabtly.cloud/v1.4.10.032/rabtly_darwin_amd64"
      sha256 "039bcf065205874228ed78115416e7752058b2c1b91ea496efde63b8225fb763" # amd64
    end
  end

  def install
    bin.install Dir["rabtly*"].first => "rabtly"
  end

  test do
    system "#{bin}/rabtly", "version"
  end
end