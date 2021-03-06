tap "homebrew/cask"
tap "homebrew/cask-versions"
tap "homebrew/core"
tap "homebrew/services"
brew "docker", link: false
brew "git"
brew "git-gui"
brew "gradle"
brew "tig"
brew "adoptopenjdk8"
cask "google-chrome"
cask "intellij-idea-ce"
cask "iterm2"
cask "postman"
cask "slack"
cask "visual-studio-code"
cask "zoom"


brew bundle install --file brewfile.txt


echo 'eval "$(/opt/homebrew/bin/brew shellenv)"' >> ~/.zprofile
source  ~/.zprofile
