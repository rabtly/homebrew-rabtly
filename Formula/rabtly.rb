class Rabtly < Formula
  desc "Self-hosted mesh VPN built on WireGuard"
  homepage "https://rabtly.cloud"
  version "1.4.10.046"

  on_macos do
    on_arm do
      url "https://dl.rabtly.cloud/v1.4.10.046/rabtly_darwin_arm64"
      sha256 "f2a7b0d147591791b7c738fd2da89664d13cdd5ba378597e40a4411519c11618" # arm64
    end
    on_intel do
      url "https://dl.rabtly.cloud/v1.4.10.046/rabtly_darwin_amd64"
      sha256 "5fd351eca24fa18b23a09db08a12e18cc562cf4d1aae97e4bcae5cef9ed7cf1d" # amd64
    end
  end

  def install
    bin.install Dir["rabtly*"].first => "rabtly"
  end

  test do
    system "#{bin}/rabtly", "version"
  end
end