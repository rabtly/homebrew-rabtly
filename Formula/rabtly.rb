class Rabtly < Formula
  desc "Self-hosted mesh VPN built on WireGuard"
  homepage "https://rabtly.cloud"
  version "1.4.10.079"

  on_macos do
    on_arm do
      url "https://dl.rabtly.cloud/v1.4.10.079/rabtly_darwin_arm64"
      sha256 "d5a51203270d6a0627c4cef734572388104dc5d44145fe94a6ea09ca93fab951" # arm64
    end
    on_intel do
      url "https://dl.rabtly.cloud/v1.4.10.079/rabtly_darwin_amd64"
      sha256 "117417bcbe3e242dc8521193e6701bfc9bffe00fa5a82bc3ae0455db202d4b07" # amd64
    end
  end

  def install
    bin.install Dir["rabtly*"].first => "rabtly"
  end

  test do
    system "#{bin}/rabtly", "version"
  end
end