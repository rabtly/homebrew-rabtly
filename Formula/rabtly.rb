class Rabtly < Formula
  desc "Self-hosted mesh VPN built on WireGuard"
  homepage "https://rabtly.cloud"
  version "1.4.10.041"

  on_macos do
    on_arm do
      url "https://dl.rabtly.cloud/v1.4.10.041/rabtly_darwin_arm64"
      sha256 "08ef8fdd9ea91fcd365887954d45818ffb6c4ccba63e9a41c5990c8e1c1a1f59" # arm64
    end
    on_intel do
      url "https://dl.rabtly.cloud/v1.4.10.041/rabtly_darwin_amd64"
      sha256 "aae02de3fbd7049c7e0b91d231b328371c6383e3704c04e911fdc1a5adc84dbc" # amd64
    end
  end

  def install
    bin.install Dir["rabtly*"].first => "rabtly"
  end

  test do
    system "#{bin}/rabtly", "version"
  end
end