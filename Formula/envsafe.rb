class Envsafe < Formula
  desc "Secure and collaborative .env file manager"
  homepage "https://github.com/r4zu/envsafe"
  # Replace v1.0.0 with your tag version and update SHA256 once you publish your release
  url "https://github.com/r4zu/envsafe/archive/refs/tags/v1.0.0.tar.gz"
  sha256 "REPLACE_WITH_SOURCE_TARBALL_SHA256"
  license "MIT"
  head "https://github.com/r4zu/envsafe.git", branch: "main"

  depends_on "go" => :build

  def install
    # Compiles and installs the binary cleanly
    system "go", "build", *std_go_args(ldflags: "-s -w")
  end

  test do
    system "#{bin}/envsafe", "help"
  end
end
