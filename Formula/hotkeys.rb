class Hotkeys < Formula
  desc "Manage global application hotkeys with a minimal macOS daemon"
  homepage "https://github.com/casparbreloh/hotkeys"
  head "https://github.com/casparbreloh/hotkeys.git", branch: "main"

  depends_on "rust" => :build
  depends_on :macos

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    assert_match "Usage", shell_output("#{bin}/hotkeys --help")
  end
end
