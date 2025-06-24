class EcsShell < Formula
  desc "Interactive ECS Exec Helper for AWS CLI"
  homepage "https://github.com/mpizala/ecs-shell"
  url "https://github.com/mpizala/ecs-shell/releases/download/v1.0.0/ecs-shell"
  version "1.0.0"
  sha256 "PLACEHOLDER_SHA256"

  depends_on "awscli"
  depends_on "jq"

  def install
    bin.install "ecs-shell"
  end

  def caveats
    <<~EOS
      ecs-shell is a shell script that helps you connect to ECS containers interactively.
      
      Requirements:
        - AWS CLI configured with appropriate permissions
        - jq for JSON processing
        - fzf (optional, for better UX) - install with: brew install fzf
      
      Usage:
        ecs-shell                                    # Interactive mode, default region
        ecs-shell --region us-west-2                # Specify AWS region
        ecs-shell --cluster my-cluster              # Skip cluster selection
        ecs-shell --service my-service              # Skip service selection
        ecs-shell --cluster test --service web -- /bin/bash  # Custom shell command
    EOS
  end

  test do
    system "#{bin}/ecs-shell", "--help"
  end
end