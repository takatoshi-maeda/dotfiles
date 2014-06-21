tap 'phinze/homebrew-cask'
tap 'TakatoshiMaeda/homebrew-mycask'
tap 'thoughtbot/formulae'
tap 'peco/peco'
tap 'homebrew/binary'

brew 'go'
brew 'peco'
brew 'brew-cask'
brew 'csshx'
brew 'erlang'
brew "git"
brew "git-flow"
brew "go"
brew "hub"
brew "jq"
brew "lua"
brew "lynx"
brew "macvim"
brew "python"
brew "rsense"
brew "rsync"
brew "scala"
brew "tig"
brew "tmux"
brew "tree"
brew "wget"
brew "zsh"
brew "gitsh"
brew "nkf"
brew "boot2docker"
brew "packer"
brew "nmap"

cask "alfred"
cask "android-file-transfer"
cask "android-studio"
cask "apns-pusher"
cask "caffeine"
cask "chromium"
cask "chromatic"
cask "clipmenu"
cask "rest-client"
cask "crashlytics"
cask "cyberduck"
cask "eclipse-platform"
cask "evernote"
cask "fluid"
cask "genymotion"
cask "github"
cask "gitx"
cask "google-chrome"
cask "google-drive"
cask "google-hangouts"
cask "google-web-designer"
cask "grooveshark"
cask "heroku-toolbelt"
cask "hipchat"
cask "mou"
cask "mysql-workbench"
cask "robomongo"
cask "sequel-pro"
cask "sublime-text"
cask "testflight"
cask "virtualbox"
cask "vagrant"
cask "wireshark"

#cask "pivotal-booster"
cask "kobito"
#cask "key-remap-4-macbook"
cask "elastic-fox-ec2tag"
cask "iam-fox"
cask "r53-fox"

if ENV["ADDITIONAL_BREWFILE"]
  ENV["ADDITIONAL_BREWFILE"].split(',').each do |env|
    self.instance_eval open(File.join(File.dirname(__FILE__), "Brewfile.#{env}")).read
  end
end
