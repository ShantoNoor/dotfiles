ln -s /data/data/com.termux/files/home/.bashsc ~/.profile
ln -s /data/data/com.termux/files/home/.gitconfig ~/.gitconfig
ln -s /data/data/com.termux/files/home/.config/nvim/ ~/.config/nvim
rm -rf ~/.local/share/nvim
ln -s /data/data/com.termux/files/home/.local/share/nvim/ ~/.local/share/nvim
ln -s /data/data/com.termux/files/home/.ssh/ ~/.ssh
eval "$(ssh-agent -s)"
ssh-add ~/.ssh/id_ed25519
# ls -s /data/data/com.termux/files/home/ ~/ 
