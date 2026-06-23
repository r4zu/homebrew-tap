class Envsafe < Formula
  desc "Secure and collaborative .env file manager"
  homepage "https://github.com/r4zu/envsafe"
  # Replace v1.0.0 with your tag version and update SHA256 once you publish your release
  url "https://github.com/r4zu/envsafe/archive/refs/tags/v1.0.0.tar.gz"
  sha256 "b5ecae006c065864f4ad97d110cb2535a5f2162a3beba18359a22d39f7a5e847"
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
