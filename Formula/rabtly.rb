class Rabtly < Formula
  desc "Self-hosted mesh VPN built on WireGuard"
  homepage "https://rabtly.cloud"
  version "1.4.10.071"

  on_macos do
    on_arm do
      url "https://dl.rabtly.cloud/v1.4.10.071/rabtly_darwin_arm64"
      sha256 "07e4a4c4370a3627b1b5a06323b9a684f58ae35e82a65b835f8e518ec88ba839" # arm64
    end
    on_intel do
      url "https://dl.rabtly.cloud/v1.4.10.071/rabtly_darwin_amd64"
      sha256 "cea09342fc5bcc647e4b70dc208cafe1454f67237d3d2fbf8495becfbd664e1d" # amd64
    end
  end

  def install
    bin.install Dir["rabtly*"].first => "rabtly"
  end

  test do
    system "#{bin}/rabtly", "version"
  end
end