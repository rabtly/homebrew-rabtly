class Rabtly < Formula
  desc "Self-hosted mesh VPN built on WireGuard"
  homepage "https://rabtly.cloud"
  version "1.4.10.078"

  on_macos do
    on_arm do
      url "https://dl.rabtly.cloud/v1.4.10.078/rabtly_darwin_arm64"
      sha256 "e55ded71fa40979b0c8d9ba01360644d465788d39d8013e62c2e0d3a80e6888a" # arm64
    end
    on_intel do
      url "https://dl.rabtly.cloud/v1.4.10.078/rabtly_darwin_amd64"
      sha256 "fa05e32eee9d891f7043c037da33cb37e070b2936434c8dbe97a29f42e0772a3" # amd64
    end
  end

  def install
    bin.install Dir["rabtly*"].first => "rabtly"
  end

  test do
    system "#{bin}/rabtly", "version"
  end
end