class Rabtly < Formula
  desc "Self-hosted mesh VPN built on WireGuard"
  homepage "https://rabtly.cloud"
  version "1.4.9.010"

  on_macos do
    on_arm do
      url "https://dl.rabtly.cloud/v1.4.9.010/rabtly_darwin_arm64"
      sha256 "8f9b83d5a7e0226b8397953c9a7ffef5ffd14d570eb6a0dc13f02a58f572a451" # arm64
    end
    on_intel do
      url "https://dl.rabtly.cloud/v1.4.9.010/rabtly_darwin_amd64"
      sha256 "66a0d9d7c582ef8b1f5feb0fd9d5583ae55612c48e70d32c9560e02af154aec2" # amd64
    end
  end

  def install
    bin.install Dir["rabtly*"].first => "rabtly"
  end

  test do
    system "#{bin}/rabtly", "version"
  end
end