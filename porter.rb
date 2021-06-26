class Porter < Formula
  desc "Porter"
  homepage "https://porter.sh"
  license "Apache-2.0"
  version "0.38.3"

  if OS.mac?
    url "https://github.com/getporter/porter/releases/download/v0.38.3/porter-darwin-amd64"
    sha256 "5c09344a1349c4c2469dc606c4e785d85ebd00a3723e228891e300fe181db828"
  end

  if OS.linux?
    url "https://github.com/getporter/porter/releases/download/v0.38.3/porter-linux-amd64"
    sha256 "4fcd59dcf972db5e64b44f13980146700ea2e348761a379a0214a3f6aa6a3ad2"
  end

  def install
    if OS.mac?
      bin.install "porter-darwin-amd64" => "porter"
    end
    if OS.linux?
      bin.install "porter-linux-amd64" => "porter"
    end
  end

  test do
    system "#{bin}/porter version"
  end
end
