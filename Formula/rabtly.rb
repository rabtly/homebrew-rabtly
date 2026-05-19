class Rabtly < Formula
  desc "Self-hosted mesh VPN built on WireGuard"
  homepage "https://rabtly.cloud"
  version "1.4.10.022"

  on_macos do
    on_arm do
      url "https://dl.rabtly.cloud/v1.4.10.022/rabtly_darwin_arm64"
      sha256 "b14b75d37b769ff55d8fa7860fd59bce95b75355dd6b364f322f6066e80673ee" # arm64
    end
    on_intel do
      url "https://dl.rabtly.cloud/v1.4.10.022/rabtly_darwin_amd64"
      sha256 "fcc1e998d242679f45f4a466645d95f28afc5481b577b0b7ac6226ea65a50d58" # amd64
    end
  end

  def install
    bin.install Dir["rabtly*"].first => "rabtly"
  end

  test do
    system "#{bin}/rabtly", "version"
  end
end