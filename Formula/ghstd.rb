class Ghstd < Formula
  desc "Check and apply standard GitHub repository settings"
  homepage "https://github.com/casparbreloh/ghstd"
  head "https://github.com/casparbreloh/ghstd.git", branch: "main"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    assert_match "Usage", shell_output("#{bin}/ghstd --help")
  end
end
