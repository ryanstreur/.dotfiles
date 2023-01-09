# Dotfiles

Mostly this repo is an effort to get my configuration under control, and to make it easier to make my dev environment settings consistent across different machines and operating systems. It's been a headache, and I'd prefer that it be less of one. Ultimately I'd like a simple script which I could use to easily port my configurations over to a new machine. Seems like this would have to be a different script for different environments.

## Installation Steps - Debian

```sh
# Installing ZSH / Oh My Zsh
# https://github.com/ohmyzsh/ohmyzsh/wiki/Installing-ZSH
sudo apt install zsh
zsh --version
# Change default shell to zsh
chsh -s /usr/bin/zsh
```

## Dotfile Repos I Admire

- [dotfiles.github.io](https://dotfiles.github.io/frameworks/)
- GitHub user [Demophoon's](https://github.com/demophoon/dotfiles)

## Tools

- bash
  - [GitHub Bash topic](https://github.com/topics/bash)
- zsh
- Windows Terminal
  - [using the JSON settings](https://github.com/microsoft/terminal/blob/master/doc/cascadia/SettingsSchema.md)
- tmux
  - [tmux wiki](https://github.com/tmux/tmux/wiki)
  - [Oh My Tmux](https://github.com/gpakosz/.tmux/)
  - [256 colors in tmux](https://unix.stackexchange.com/questions/1045/getting-256-colors-to-work-in-tmux)
  - [True colors in tmux](https://jdhao.github.io/2021/03/17/nvim_truecolor_tmux_windows/)
  - [True colors in vim and tmux](https://deductivelabs.com/blog/tech/using-true-color-vim-tmux/)
- vim
  - [vim awesome website](https://vimawesome.com/)
    - plugins etc.
- fzf
  - [fzf on github](https://github.com/junegunn/fzf)

## Notes

If you see you complete me fail for want of python vim compilation, it means you need to run

```sh
pip install pynvim
```
## Ideas

- try out some tmux plugins (but is it worth the complexity?)
  - https://github.com/tmux-plugins/tpm
