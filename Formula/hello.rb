class Hello < Formula
  desc "Program that produces a familiar, friendly greeting"
  homepage "https://www.gnu.org/software/hello/"
  url "https://ftpmirror.gnu.org/gnu/hello/hello-2.12.1.tar.gz"
  sha256 "8d99142afd92576f30b0cd7cb42a8dc6809998bc5d607d88761f512e26c7db20"
  license "GPL-3.0-or-later"

  def install
    system "./configure", "--disable-silent-rules", *std_configure_args
    system "make", "install"
  end

  test do
    assert_match "Hello", shell_output("#{bin}/hello")
  end
end
