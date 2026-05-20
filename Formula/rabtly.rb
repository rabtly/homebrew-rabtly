class Rabtly < Formula
  desc "Self-hosted mesh VPN built on WireGuard"
  homepage "https://rabtly.cloud"
  version "1.4.10.030"

  on_macos do
    on_arm do
      url "https://dl.rabtly.cloud/v1.4.10.030/rabtly_darwin_arm64"
      sha256 "509a3364a720f7910763ded2f99ee78ebee69aa6473345764c78f131fed5299c" # arm64
    end
    on_intel do
      url "https://dl.rabtly.cloud/v1.4.10.030/rabtly_darwin_amd64"
      sha256 "d12b62962c9781f94063d1c59af1b94e0b31495c14c7d6b6ac84a84a8c897e31" # amd64
    end
  end

  def install
    bin.install Dir["rabtly*"].first => "rabtly"
  end

  test do
    system "#{bin}/rabtly", "version"
  end
end