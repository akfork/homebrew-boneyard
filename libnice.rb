class Libnice < Formula
  desc "GLib ICE implementation"
  homepage "https://wiki.freedesktop.org/nice/"
  url "https://nice.freedesktop.org/releases/libnice-0.1.13.tar.gz"
  sha256 "61112d9f3be933a827c8365f20551563953af6718057928f51f487bfe88419e1"

  depends_on "pkg-config" => :build
  depends_on "glib"
  depends_on "gstreamer"

  def install
    system "./configure", "--prefix=#{prefix}", "--disable-dependency-tracking",
                          "--disable-silent-rules"
    system "make", "install"
  end
end
