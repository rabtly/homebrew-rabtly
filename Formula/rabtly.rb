class Rabtly < Formula
  desc "Self-hosted mesh VPN built on WireGuard"
  homepage "https://rabtly.cloud"
  version "1.4.10.017"

  on_macos do
    on_arm do
      url "https://dl.rabtly.cloud/v1.4.10.017/rabtly_darwin_arm64"
      sha256 "86c33e61b30f5602c254b51dcf04b3800c0368fbbae07b086dbfdef75504a6f1" # arm64
    end
    on_intel do
      url "https://dl.rabtly.cloud/v1.4.10.017/rabtly_darwin_amd64"
      sha256 "3603023cf8fc4facb18c242fd3cf3a7144fb24c28008d975ec4c9cdc8926efbf" # amd64
    end
  end

  def install
    bin.install Dir["rabtly*"].first => "rabtly"
  end

  test do
    system "#{bin}/rabtly", "version"
  end
end