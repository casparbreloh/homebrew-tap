class Filewright < Formula
  desc "Read, inspect, and render local files for AI agents"
  homepage "https://github.com/casparbreloh/filewright"
  head "https://github.com/casparbreloh/filewright.git", branch: "main"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    assert_match "Usage", shell_output("#{bin}/fw --help")
  end
end
