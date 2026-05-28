class Rabtly < Formula
  desc "Self-hosted mesh VPN built on WireGuard"
  homepage "https://rabtly.cloud"
  version "1.4.10.049"

  on_macos do
    on_arm do
      url "https://dl.rabtly.cloud/v1.4.10.049/rabtly_darwin_arm64"
      sha256 "a810f25e0b487fac4bab77c837910663ce7422be912c7e1c9b0fb1175a08dc92" # arm64
    end
    on_intel do
      url "https://dl.rabtly.cloud/v1.4.10.049/rabtly_darwin_amd64"
      sha256 "90670347f07bb02e71eb9ce46044dbe7f71d263fd5bbb340fc037267dae6e1b1" # amd64
    end
  end

  def install
    bin.install Dir["rabtly*"].first => "rabtly"
  end

  test do
    system "#{bin}/rabtly", "version"
  end
end