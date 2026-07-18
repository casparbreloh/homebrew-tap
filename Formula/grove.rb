class Grove < Formula
  desc "Manage Git worktrees with a small, opinionated workflow"
  homepage "https://github.com/casparbreloh/grove"
  head "https://github.com/casparbreloh/grove.git", branch: "main"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    assert_match "Usage", shell_output("#{bin}/grove --help")
  end
end
