class Rabtly < Formula
  desc "Self-hosted mesh VPN built on WireGuard"
  homepage "https://rabtly.cloud"
  version "1.4.10.040"

  on_macos do
    on_arm do
      url "https://dl.rabtly.cloud/v1.4.10.040/rabtly_darwin_arm64"
      sha256 "e4255b72aa7dd7756de6c22ca8bbeff7d76cc46a5cc6b881810990822013da14" # arm64
    end
    on_intel do
      url "https://dl.rabtly.cloud/v1.4.10.040/rabtly_darwin_amd64"
      sha256 "2c8aad1fe3f5cf1c535b3e97b0723d686d3b421f651ab736225987b423c787b8" # amd64
    end
  end

  def install
    bin.install Dir["rabtly*"].first => "rabtly"
  end

  test do
    system "#{bin}/rabtly", "version"
  end
end