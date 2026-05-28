class Rabtly < Formula
  desc "Self-hosted mesh VPN built on WireGuard"
  homepage "https://rabtly.cloud"
  version "1.4.10.048"

  on_macos do
    on_arm do
      url "https://dl.rabtly.cloud/v1.4.10.048/rabtly_darwin_arm64"
      sha256 "9285c67ac53ae47ee5466aa120f6bc5499405ff3aba9fef4a431ac4b30b6d626" # arm64
    end
    on_intel do
      url "https://dl.rabtly.cloud/v1.4.10.048/rabtly_darwin_amd64"
      sha256 "9e026501b9cb113c1f6536da83a54de863c95b4bd30eb365570d18d484280f5d" # amd64
    end
  end

  def install
    bin.install Dir["rabtly*"].first => "rabtly"
  end

  test do
    system "#{bin}/rabtly", "version"
  end
end