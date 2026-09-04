class Fresnel < Formula
  include Language::Python::Virtualenv

  desc "Mac-native orchestration harness for bounded local coding agents"
  homepage "https://github.com/darkwebber/fresnel"
  url "https://github.com/darkwebber/fresnel/releases/download/v0.3.0/fresnel_agent-0.3.0.tar.gz"
  sha256 "502b8213d0aeee3595e39df6389c6c60db32b0efb8ca3602a0f1544c47edc228"
  license "Apache-2.0"

  depends_on arch: :arm64
  depends_on "python@3.13"
  depends_on "uv"

  def install
    virtualenv_install_with_resources
  end

  test do
    assert_match "Fresnel 0.3.0", shell_output("#{bin}/fresnel --version")
  end
end
