class Porter < Formula
  desc "Porter"
  homepage "https://porter.sh"
  license "Apache-2.0"
  version "0.29.0"
  url "https://cdn.porter.sh/v0.29.0/porter-darwin-amd64"
  sha256 "b200be09146d6ca6b6f277e01e0b98cf9464b6cd343a2234db4c981a230c6db3"

  def install
    system "mv", "porter-darwin-amd64", "porter"
    bin.install "porter"
  end

  test do
    system "#{bin}/porter version"
  end
end
