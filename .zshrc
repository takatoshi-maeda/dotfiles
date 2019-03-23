# -*- sh -*-
export PATH=/opt/brew/bin:/opt/brew/sbin:$PATH

source ~/.zsh.d/zshrc

if [ -d '/Users/takatoshi-maeda/.gcp' ]; then
  # The next line updates PATH for the Google Cloud SDK.
  source '/Users/takatoshi-maeda/.gcp/google-cloud-sdk/path.zsh.inc'
  # The next line enables shell command completion for gcloud.
  source '/Users/takatoshi-maeda/.gcp/google-cloud-sdk/completion.zsh.inc'
fi

export DISABLE_SPRING=1
export PATH="/opt/brew/opt/imagemagick@6/bin:$PATH"

# added by travis gem
[ -f /Users/takatoshi-maeda/.travis/travis.sh ] && source /Users/takatoshi-maeda/.travis/travis.sh
