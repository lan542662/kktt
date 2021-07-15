## zsh

zsh zsh-completions zsh-syntax-highlighting zsh-autosuggestions fzf ripgrep

sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

chsh -s $(which zsh) // echo $SHELL to check  ///chsh -l //usermod -s /usr/bin/zsh kktt

git clone https://github.com/rupa/z.git ~/github

git clone https://github.com/sindresorhus/pure.git "$ZSH_CUSTOM/themes/pure"

```.zshrc

export ZSH="/home/kktt/.oh-my-zsh"
ZSH_THEME=""  #本来是ys ,启用了pure后设置成空或删除

. ~/github/z.sh
fpath+=$HOME/.zsh/pure

plugins=(git git-prompt sudo fzf ripgrep npm yarn zsh-autosuggestions zsh-completions zsh-syntax-highlighting yarn npm systemd aliases alias-finder z history zsh_reload)

autoload -U promptinit; promptinit
autoload -U compinit && compinit
prompt pure

source $ZSH/oh-my-zsh.sh

export VISUAL=nvim
export EDITOR="$VISUAL"

if [ -n "$WINDOWID" ]; then
        TRANSPARENCY_HEX=$(printf 0x%x $((0xffffffff * 80 / 100)))
        xprop -id "$WINDOWID" -f _NET_WM_WINDOW_OPACITY 32c -set _NET_WM_WINDOW_OPACITY "$TRANSPARENCY_HEX"
fi

alias af='alias-finder'
```
