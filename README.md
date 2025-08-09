# stow
> stow dots
> stow nvim
> stow clangd-macos
> stow clangd-linux
> stow ghostty 
> stow kitty 
> stow cp-root 
## sh
"""sh
stow dots nvim ghostty cp-root clangd-macos
"""
"""sh
stow dots nvim ghostty cp-root clangd-linux
"""

# dots
## bash
"""bash
echo 'source ~/.bashsc' >> ~/.bashrc
source ~/.bashrc
"""
## zsh
"""bash
echo 'source ~/.bashsc' >> ~/.zshrc
source ~/.zshrc
"""

# nvim
## lsps
    - clangd
    - lua-language-server
## formatters
    - stylua
## variables
    - gpp
    - gpp_args

# cp-root
> g++ -std=c++20 -O3 -x c++-header stdc++.h -o stdc++.h.gch
