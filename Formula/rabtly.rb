class Rabtly < Formula
  desc "Self-hosted mesh VPN built on WireGuard"
  homepage "https://rabtly.cloud"
  version "1.4.10.034"

  on_macos do
    on_arm do
      url "https://dl.rabtly.cloud/v1.4.10.034/rabtly_darwin_arm64"
      sha256 "75ff6671b3f3ebb6bdc456e73db0269ff027a1e7f897442bc329ed57b06cabb3" # arm64
    end
    on_intel do
      url "https://dl.rabtly.cloud/v1.4.10.034/rabtly_darwin_amd64"
      sha256 "51c56eaaba7b6024ba50dbf41c30bda551ca803829a99943a52e7396fb7fdb4a" # amd64
    end
  end

  def install
    bin.install Dir["rabtly*"].first => "rabtly"
  end

  test do
    system "#{bin}/rabtly", "version"
  end
end