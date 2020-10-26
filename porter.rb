class Porter < Formula
  desc "Porter"
  homepage "https://porter.sh"
  license "Apache-2.0"

  version "0.29.0"
  if OS.mac?
    url "https://cdn.porter.sh/v0.29.0/porter-darwin-amd64"
    sha256 "b200be09146d6ca6b6f277e01e0b98cf9464b6cd343a2234db4c981a230c6db3"
    $binary_name = "porter-darwin-amd64"
  elsif OS.linux?
    url "https://cdn.porter.sh/v0.29.0/porter-linux-amd64"
    sha256 "f0840afa617da7d2c6e687433bcb7bfde051335102b864dbb7d3afe024cccf81"
    $binary_name = "porter-linux-amd64"
  end

  def install
    system "mv", $binary_name, "porter"
    bin.install "porter"
  end

  test do
    system "#{bin}/porter version"
  end
end
