alias g="git"
alias gt="git"
alias ls="lsd"
alias ll="ls -a"
alias la="ls -la"
alias vim="nvim"
alias vi="nvim"
alias cpp="cd ~/cp"
alias ddd="cd /storage/emulated/0/download"
alias hh="cd ~"
alias evrc="vim ~/.config/nvim/init.vim"
alias gvrc="cd ~/.config/nvim"
alias ebrc="nvim ~/.bashrc"
alias sbrc="source ~/.bashrc"
alias cls="clear"
alias py="python3"
alias gup="g aa && g cmu && g ps"
alias gfp="g fs && g pl"
alias ccp="cd ~/cp && vi -S ccp.vim"
alias acp="cd ~/cp && vi -S acp.vim"

copydd() {
  cp -r "$1" /storage/emulated/0/download
}

copyhh() {
  cp -r "$1" ~
}

cdd() {
  cd "$1"
  ll
}


sxx() {
  cd ~/cp
  gfp
  cd ~/.config/nvim
  gfp
  cd ~
  gfp
}


exx() {
  cd ~/cp
  gup
  cd ~/.config/nvim
  gup
  cd ~
  gup
  exit
}

