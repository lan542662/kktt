## installation
https://github.com/neovim/neovim/wiki/Installing-Neovim

安装插件管理 PlugInstall PlugUpdate PlugUpgrade
```
sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
```

## config
https://github.com/neovim/neovim/blob/master/runtime/doc/nvim.txt
 创建 /home/kktt/.config/nvim/.init.vim 文件
    :call mkdir(stdpath('config'), 'p')
    :exe 'edit '.stdpath('config').'/init.vim'

其余的不需要，因为不是从vim transition过来的

参考
https://github.com/gpakosz/.vim/blob/vanilla/.vimrc#L535
