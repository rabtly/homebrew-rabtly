class Rabtly < Formula
  desc "Self-hosted mesh VPN built on WireGuard"
  homepage "https://rabtly.cloud"
  version "1.4.10.111"

  on_macos do
    on_arm do
      url "https://dl.rabtly.cloud/v1.4.10.111/rabtly_darwin_arm64"
      sha256 "ee3484d1b97f64a4f4748fc586454b30404f83d3a5aab7b454ac061ddad5d4ff" # arm64
    end
    on_intel do
      url "https://dl.rabtly.cloud/v1.4.10.111/rabtly_darwin_amd64"
      sha256 "31244adba09965a57c53687571c89d765ee22f20fb349f2f18be8c8b4378ee45" # amd64
    end
  end

  def install
    bin.install Dir["rabtly*"].first => "rabtly"
  end

  test do
    system "#{bin}/rabtly", "version"
  end
end