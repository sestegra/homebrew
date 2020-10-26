class Porter < Formula
  desc "Porter"
  homepage "https://porter.sh"
  license "Apache-2.0"
  version "0.29.1"
  url "https://cdn.porter.sh/v0.29.1/porter-darwin-amd64"
  sha256 "64d8c5a1378465d9e304531a06649d911575f872c385d0986df7f2ef26dc6896"

  def install
    system "mv", "porter-darwin-amd64", "porter"
    bin.install "porter"
  end

  test do
    system "#{bin}/porter version"
  end
end
