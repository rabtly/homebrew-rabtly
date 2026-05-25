class Rabtly < Formula
  desc "Self-hosted mesh VPN built on WireGuard"
  homepage "https://rabtly.cloud"
  version "1.4.10.044"

  on_macos do
    on_arm do
      url "https://dl.rabtly.cloud/v1.4.10.044/rabtly_darwin_arm64"
      sha256 "28b15ab6e74371bfea7aee7103deffb4e0eacab462887c26fca70b3ff24ed8ef" # arm64
    end
    on_intel do
      url "https://dl.rabtly.cloud/v1.4.10.044/rabtly_darwin_amd64"
      sha256 "c08213c050f0d90d778e61101cc385038941279f18e2bf52f9badcebe1e96863" # amd64
    end
  end

  def install
    bin.install Dir["rabtly*"].first => "rabtly"
  end

  test do
    system "#{bin}/rabtly", "version"
  end
end