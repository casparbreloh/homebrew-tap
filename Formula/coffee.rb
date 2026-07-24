class Coffee < Formula
  desc "Keep a Mac awake safely with the lid closed"
  homepage "https://github.com/casparbreloh/coffee"
  head "https://github.com/casparbreloh/coffee.git", branch: "main"

  depends_on "rust" => :build
  depends_on :macos

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    assert_match "Keep a Mac awake safely", shell_output("#{bin}/coffee --help")
  end
end
