class Sshpass < Formula
  homepage "https://sourceforge.net/projects/sshpass/"
  url "https://downloads.sourceforge.net/project/sshpass/sshpass/1.07/sshpass-1.07.tar.gz"
  # curl -sL $URL | sha256sum
  sha256 "986973c8dd5d75ff0febde6c05c76c6d2b5c4269ec233e5518f14f0fd4e4aaef"

  def install
    system "./configure", "--disable-debug",
                          "--disable-dependency-tracking",
                          "--disable-silent-rules",
                          "--prefix=#{prefix}"
    system "make", "install"
  end

  test do
    system "sshpass"
  end
end
