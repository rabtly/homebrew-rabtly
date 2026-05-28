class Rabtly < Formula
  desc "Self-hosted mesh VPN built on WireGuard"
  homepage "https://rabtly.cloud"
  version "1.4.10.050"

  on_macos do
    on_arm do
      url "https://dl.rabtly.cloud/v1.4.10.050/rabtly_darwin_arm64"
      sha256 "95b80bdb9f099e0ca36e6cc24dfbf566a2cc51d73fe46c67185d22e43dd9ac89" # arm64
    end
    on_intel do
      url "https://dl.rabtly.cloud/v1.4.10.050/rabtly_darwin_amd64"
      sha256 "627404e51bf4ea3573782b66fa80724969f294cbcf9b61ec6a25109a72096e2e" # amd64
    end
  end

  def install
    bin.install Dir["rabtly*"].first => "rabtly"
  end

  test do
    system "#{bin}/rabtly", "version"
  end
end