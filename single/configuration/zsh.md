## zsh

zsh zsh-completions zsh-syntax-highlighting zsh-autosuggestions fzf ripgrep

sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

``` 一些问题
chsh -s $(which zsh) // echo $SHELL to check  ///chsh -l //usermod -s /usr/bin/zsh kktt
- chsh -s /bin/zsh root
- sudo chsh -s /bin/zsh $USER
- usermod -s /bin/zsh kktt
- 已存在的Home // adduser --home /home/kktt kktt
- exec /bin/zsh or exec /usr/bin/zsh
- /etc/adduser.conf

DSHELL=/bin/sh
to:

DSHELL=/bin/zsh

/etc/default/useradd
SHELL=/bin/sh
to:

SHELL=/bin/zsh
```
```
插件问题 查找路径
pacman -Ql zsh-autosuggestions-git
source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
```
git clone https://github.com/rupa/z.git ~/github

git clone https://github.com/sindresorhus/pure.git "$ZSH_CUSTOM/themes/pure"

```.zshrc

export ZSH="/home/kktt/.oh-my-zsh"

# 本来是ys ,启用了pure后设置成空或删除
# 注意#后面的空格，注意pure的顺序靠后
ZSH_THEME=""  


. ~/github/z.sh
fpath+=$HOME/.zsh/pure

plugins=(git git-prompt sudo fzf ripgrep npm yarn zsh-autosuggestions zsh-completions zsh-syntax-highlighting yarn npm systemd aliases alias-finder z history zsh_reload)

source $ZSH/oh-my-zsh.sh

autoload -Uz compinit promptinit
compinit
promptinit
zstyle ':prompt:pure:prompt:*' color cyan
zstyle :prompt:pure:git:stash show yes
prompt pure



export VISUAL=nvim
export EDITOR="$VISUAL"

if [ -n "$WINDOWID" ]; then
        TRANSPARENCY_HEX=$(printf 0x%x $((0xffffffff * 80 / 100)))
        xprop -id "$WINDOWID" -f _NET_WM_WINDOW_OPACITY 32c -set _NET_WM_WINDOW_OPACITY "$TRANSPARENCY_HEX"
fi

[[ -e ~/.profile ]] && emulate sh -c 'source ~/.profile'

# You can't "export" your .bashrc to a .zshrc

alias af='alias-finder'
```
