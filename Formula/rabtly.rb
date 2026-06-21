class Rabtly < Formula
  desc "Self-hosted mesh VPN built on WireGuard"
  homepage "https://rabtly.cloud"
  version "1.4.10.097"

  on_macos do
    on_arm do
      url "https://dl.rabtly.cloud/v1.4.10.097/rabtly_darwin_arm64"
      sha256 "4ba86c7fa64e0bfb66d9035be66a31bcf4a3a838acfa0f9a2ec8ad4258361c19" # arm64
    end
    on_intel do
      url "https://dl.rabtly.cloud/v1.4.10.097/rabtly_darwin_amd64"
      sha256 "21f0023fd99a4c23e7c5e6a76e9f260a70dfd5c448d5a688e0829459be5482f5" # amd64
    end
  end

  def install
    bin.install Dir["rabtly*"].first => "rabtly"
  end

  test do
    system "#{bin}/rabtly", "version"
  end
end