#!/usr/bin/env sh

# install homebrew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

# grab mackup repo
cd ~ && git clone https://github.com/LinuxNtwrkng/mackup.git && cd ~/mackup && git remote add upstream https://github.com/lra/mackup.git && git fetch upstream && git checkout master && git rebase upstream/master

# grab dotfiles repo (includes Brewfile)
cd ~ && git clone https://github.com/LinuxNtwrkng/dotfiles.git

# install brew files
cd ~/dotfiles && brew bundle

