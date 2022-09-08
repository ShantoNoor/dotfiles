# ln -s /data/data/com.termux/files/home/.bashsc ~/.profile
# ln -s /data/data/com.termux/files/home/.gitconfig ~/.gitconfig
# mkdir ~/.config
# ln -s /data/data/com.termux/files/home/.config/nvim/ ~/.config/nvim
# rm -rf ~/.local/share/nvim
# mkdir ~/.local
# mkdir ~/.local/share
# ln -s /data/data/com.termux/files/home/.local/share/nvim/ ~/.local/share/nvim
# ln -s /data/data/com.termux/files/home/.ssh/ ~/.ssh
# ln -s /data/data/com.termux/files/home/cp/ ~/cp
# eval "$(ssh-agent -s)"
# ssh-add ~/.ssh/id_ed25519

if [[ "`uname -v`" == "#1 SMP PREEMPT Fri Dec 10 13:53:37 WIB 2021" ]]
then
  ln -s ./.bashsc ./.profile
  rm /data/data/com.termux/files/home/.bashrc
  cp .bashrc /data/data/com.termux/files/home/.bashrc
fi

