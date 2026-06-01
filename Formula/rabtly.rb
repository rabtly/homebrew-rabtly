class Rabtly < Formula
  desc "Self-hosted mesh VPN built on WireGuard"
  homepage "https://rabtly.cloud"
  version "1.4.10.062"

  on_macos do
    on_arm do
      url "https://dl.rabtly.cloud/v1.4.10.062/rabtly_darwin_arm64"
      sha256 "bc27240b91d0502a16546d37818027d6a1efe1dc9aa9170f7a762907ff431f78" # arm64
    end
    on_intel do
      url "https://dl.rabtly.cloud/v1.4.10.062/rabtly_darwin_amd64"
      sha256 "f8a64a07af4b506ec1a84a7876242eb7639a22e04d1b2e725c4084535ca20054" # amd64
    end
  end

  def install
    bin.install Dir["rabtly*"].first => "rabtly"
  end

  test do
    system "#{bin}/rabtly", "version"
  end
end