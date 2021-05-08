# vscodium and neovim
1. editorconfig使用
2. [keybinds参考](https://github.com/kktt007/archlinuxdata/raw/master/archlinux-backup/home/.config/Code/User/keybindings.json)
3. 
项目使用e

![vscode插件](https://kktt007.top/img/2021_03_30_033.jpg)

https://xu3352.github.io/tags.html#vim-plugin-ref
[别人的效果](https://github.com/joshukraine/dotfiles/blob/master/nvim/init.vim)
vscode似乎只有简单的插件来完成，vim插件到是可以, 百合说，vscode什么都能做，还要vim干嘛

[vscodium](https://vscodium.com)

| 插件 |               vscode               | neovim |
| :--: | :--------------------------------: | :----: |
| 对齐 | [Better Align](#a1)<a id="1a"></a>, [multi-command](#a2)<a id="2a"></a>|[Tabular.vim], [vim-easy-align]      |
| 注释 |[Comment Anchors]                                    |       - |
|snippets for all|[Tabnine]|-|
|snippets for md|[markdown-formatter]|-|
|[user snippets](#a3)<a id="3a"></a>|自定义片段|-|
|图床|[vs-picgo](#a4)<a id="4a"></a>|-|
|标签跳转|[Bookmarks](#a5)<a id="5a"></a>|-|
|配置文件|[EditorConfig for VS Code](#a6)<a id="6a"></a>||
|颜色主题|[Eva Theme],[Dark+ Material],[Dracula Official]||
|补全|[Tabnine]||
|按键|AutoHotKey|xmodmap|
|函数定义|自带|leaderf或者tagbar（依赖ctags）需要配合nerdtree|
|函数调用者||ctags配合cscops(配合vim-gutentags)|

---
代码跳转 代码提示 自动补全 语法高亮 格式化功能
github查找插件: vim-plugins syntax-checker neovim-plugin

ctags can be used to take you to the definition of a variable (e.g., a function, variable, or macro). cscope can be used to take you to the call site of a definition (e.g., all function calls, all variable uses, all macro uses).

简而言之，它是 ctags 的加强版，ctags 只能让我们跳转到某个 tag 的定义之处，但是无法让我们知道这个 tag 还在哪里出现过，或者被哪个函数调用过，这时候就需要 cscope 来完成该功能了。
https://topsemic.com/2090.html

http://www.cxyzjd.com/article/weixin_39782394/110511659
https://gangzai.online/2018/09/27/software/%E6%89%93%E9%80%A0%E8%87%AA%E5%B7%B1%E7%9A%84-Vim/

http://www.waylon.one/Linux/vim-configuration/

关于补全
https://www.cnblogs.com/cniwoq/p/13272746.html
VS Code 就提出了 “Language Server” （简称 LSP）这种先进的概念。这是一种 Client-Server 架构，每个语言实现自己的 Language Server，每个编辑器去实现自己对接 Language Server 的前端。这样一个语言只需要实现一次，就可以支持所有的编辑器。上面那种情况，只要有3个语言的补全实现+3个编辑器自己的 Language Server 实现就可以了。

## lsp

https://www.kawabangga.com/posts/3745
vim-lsp
是一个与 LSP 交互的插件，类似于一个 Vim 的 SDK。


1. 安装该语言的 LSP，这里有一个列表；
2. 在 Vim 中注册该 LSP；

以 Bash 为例，我们首先按照仓库的介绍，安装该语言的 LSP：

1
$ npm i -g bash-language-server
然后在 .vimrc 中用以下配置注册：

```bash
if executable('bash-language-server')
  au User lsp_setup call lsp#register_server({
        \ 'name': 'bash-language-server',
        \ 'cmd': {server_info->[&shell, &shellcmdflag, 'bash-language-server start']},
        \ 'whitelist': ['sh'],
        \ })
endif
```

https://dev.to/moniquelive/haskell-lsp-bonus-for-vim-4nlj

```ruby
    if executable('solargraph')
      " gem install solargraph
      autocmd User lsp_setup call lsp#register_server({
            \   'name': 'solargraph',
            \   'cmd': {server_info->[&shell, &shellcmdflag, 'solargraph stdio']},
            \   'initialization_options': {"diagnostics": "true"},
            \   'whitelist': ['ruby'],
            \ })
    endif
```

* ## [Better Align](#1a) <a id="a1"></a> 
  + [marketplace](https://marketplace.visualstudio.com/items?itemName=wwm.better-align) 需要额外配置

* ## [multi-command](#2a)<a id="a2"></a>

  + [marketplace](https://marketplace.visualstudio.com/items?itemName=ryuta46.multi-command)

* ## [Tabular.vim]

https://docs.w3cub.com/cheatsheets/tabular.html
https://wklken.me/posts/2015/06/07/vim-plugin-easyalign.html

## [user snippets](#3a)<a id="a3"></a>

[参考](https://adamtheautomator.com/vs-code-snippets/#Finding_VS_Code_Snippets)

C:\Users\Administrator\AppData\Roaming\VSCodium\User\snippets\markdown.json
ctrl+shift+p 输入snippets自行添加

``` 

	 "an an markdown anchor": {
	 	"prefix": "an",
	 	"body": [
			"<a id=\"$1\"></a>"
	 	],
	 	"description": "anchor"
	 }
```

[vs-picgo](#4a)<a id="a4"></a>

``` 

![${uploadedName}](${url})

${mdFileName}${extName}
LTAI4G5KKM1hqJT6bwn3nrqy
UTbDEASUnAagpaZc8kv1zJZ7cjJ2阿里云好烦，移除字母
oss-cn-shanghai
kktt007
https://kktt007.top
img/
```

- ## 标签跳转
[Bookmarks](#5a)<a id="a5"></a>

- ## 配置文件
[EditorConfig for VS Code](#6a)<a id="a6"></a>

```
#EditorConfig文件使用INI格式。斜杠(/)作为路径分隔符，#或者;作为注释。路径支持通配符:
#表明是最顶层的配置文件，发现设为true时，才会停止查找.editorconfig文件
#https://github.com/editorconfig/editorconfig/wiki/EditorConfig-Properties
#打开需要格式化的文件并手动格式化代码（Mac OS ：shift+option+f  Windows ：shift+alt+f）

root = true
#root = true 控制 .editorconfig 是否生效的字段；
#* 匹配除/之外的任意字符
#**    匹配任意字符串
#? 匹配任意单个字符
#[name]    匹配name字符
#[!name]   不匹配name字符
#[s1,s2,s3]    匹配给定的字符串
#[num1..num2]  匹配num1到mun2直接的整数
[*]
#文件的charset。有以下几种类型：latin1, utf-8, utf-8-bom, utf-16be, utf-16le
charset = utf-8

#缩进为 space 时，缩进的字符数 设置缩进风格，tab或者空格,visual studio默认 tab	tab/space
indent_size = 2

#缩进为 tab 时，缩进的宽度,设置tab的列数,默认是indent_size
#tab_width = 2

#换行符的类型。lf, cr, crlf三种
end_of_line = lf

max_line_length = 80

#是否将行尾空格自动删除
trim_trailing_whitespace = true

#是否使文件以一个空白行结尾
insert_final_newline = true

[*.md]
# 删除行尾空格 = 否
trim_trailing_whitespace = false

[package.json]
# 缩进样式=空格
indent_style = space
# 缩进大小=2
indent_size = 2
```

2、ALT+SHIFT+D 下载配置
3、ALT+SHIFT+U 上传配置

windows:[AutoHotKey vim](https://github.com/JakubNer/autokey-autohotkey-vim-nav)
[用capslock](https://github.com/Vonng/Capslock/blob/master/README_ZH.md)
[这个用空格的脚本也有意思](https://github.com/qdzhang/ahk-tools)
[这个也可参考](https://github.com/majorworld/Pet)
https://www.appinn.com/pet-for-windows/
https://sspai.com/post/57157#!

[参考](https://sspai.com/post/57157)

[当前这个脚本默认是最佳的按键]](https://github.com/kktt007/Capslock/blob/master/win/CapsLock.ahk)
或者[配置用alt](https://www.aukocharlie.com/archives/vscode设置双快捷键)

更改内置，在有ahk的时候就可以不用了，因为不是capslock

```
[
  { 
  "key": "shift+alt+d",  "command": "wwm.aligncode",
  "when": "editorTextFocus && !editorReadonly" 
},
{
  "key": "alt+k",
  "command": "cursorUp",
  "when": "textInputFocus"
},
{
  "key": "up",
  "command": "cursorUp",
  "when": "textInputFocus"
},
{
  "key": "alt+j",
  "command": "cursorDown",
  "when": "textInputFocus"
},
{
  "key": "down",
  "command": "cursorDown",
  "when": "textInputFocus"
},
{
  "key": "alt+h",
  "command": "cursorLeft",
  "when": "textInputFocus"
},
{
  "key": "left",
  "command": "cursorLeft",
  "when": "textInputFocus"
},
{
  "key": "alt+l",
  "command": "cursorRight",
  "when": "textInputFocus"
},
{
  "key": "right",
  "command": "cursorRight",
  "when": "textInputFocus"
},
{
  "key": "down",
  "command": "list.focusDown",
  "when": "listFocus && !inputFocus"
},
{
  "key": "down",
  "command": "selectNextSuggestion",
  "when": "suggestWidgetMultipleSuggestions && suggestWidgetVisible && textInputFocus"
},
{
  "key": "alt+j",
  "command": "selectNextSuggestion",
  "when": "suggestWidgetMultipleSuggestions && suggestWidgetVisible && textInputFocus"
},
{
  "key": "up",
  "command": "selectPrevSuggestion",
  "when": "suggestWidgetMultipleSuggestions && suggestWidgetVisible && textInputFocus"
},
{
  "key": "alt+k",
  "command": "selectPrevSuggestion",
  "when": "suggestWidgetMultipleSuggestions && suggestWidgetVisible && textInputFocus"
},
]
```
以下也可参考
ctrl+[ instead of <esc>
ctrl+m instead of <enter>
参考https://gist.github.com/Danik/5808330
```
;;; # = Win
;;; ^ = Ctrl
;;; ! = Alt
;;; + = Shift
```
	
  锁定大写
CaspLock + `          | {CapsLock}CapsLock Switcher as a Substituent	

## vscode:

智能提示:
alt+j 下一个
alt+k 上一个
{
  "key": "alt+j",
  "command": "selectNextSuggestion",
  "when": "suggestWidgetMultipleSuggestions && suggestWidgetVisible && textInputFocus"
},
{
  "key": "alt+k",
  "command": "selectPrevSuggestion",
  "when": "suggestWidgetMultipleSuggestions && suggestWidgetVisible && textInputFocus"
},

## capslock.ahk:
https://github.com/kktt007/Capslock/blob/master/win/CapsLock.ahk
;;; # = Win
;;; ^ = Ctrl
;;; ! = Alt
;;; + = Shift

CapsLock & `;:: Send, {Enter}                                        ;|
CapsLock & m:: Send, {Enter}                                         ;|
CapsLock & [:: Send, {Esc}
以下供参考
;     Cursor keys           - J, K, L, I
;     Enter                 - Space
;     Home, PgDn, PgUp, End - U, O, Y, H
;     Backspace and Del     - N, M
;
;     Insert                - B
;     Select all            - A
;     Cut, copy, paste      - S, D, F
;     Close tab, window     - W, E
;     Esc                   - R
;     Next, previous tab    - Tab, Q
;     Undo, redo            - , and .


linux:
- [xmodmap](https://tonsky.me/blog/cursor-keys/) 
- [我的配置](https://github.com/kktt007/archlinux/blob/master/快捷键.md) 
- https://www.cnblogs.com/rain-blog/p/make-capslock-hjkl-as-arrows.html

```
remove Lock = Caps_Lock
remove Control = Control_L
keysym Control_L = Caps_Lock
keysym Caps_Lock = Control_L
add Lock = Caps_Lock
add Control = Control_L
keycode 66 = Mode_switch
keysym h = h H Left
keysym l = l L Right
keysym k = k K Up
keysym j = j J Down
keysym u = u U Prior
keysym i = i I Home
keysym o = o O End
keysym p = p P Next
keysym d = d D Return
keysym f = f F Return
keysym semicolon = semicolon colon BackSpace
```
- [参考](https://github.com/acestronautical/dotfiles/blob/master/xmodmap/.xmodmap)
- [参考](https://gist.github.com/tacone/97d9e8ffbbb840bb390d519e06d7e802)

macos: Karabiner Elements
参考
https://zhuanlan.zhihu.com/p/111004160
https://blog.csdn.net/techfield/article/details/84186402

vscode插件: daf2d6cb4cb65e64cf8cb6923ac0#5beb
Extensions Added:
  better-align v1.1.7
  better-comments v2.1.0
  bracket-pair-colorizer v1.0.61
  code-settings-sync v3.4.3
  code-spell-checker v1.10.4
  dark-plus-material v2.3.12
  EditorConfig v0.16.4
  eva-theme v1.1.4
  git-graph v1.30.0
  gitlens v11.3.0
  indent-rainbow v7.5.0
  markdown-all-in-one v3.4.0
  markdown-extended v1.0.19
  markdown-formatter v0.9.0
  markdown-shortcuts v0.12.0
  material-icon-theme v4.6.0
  multi-command v1.5.0
  path-autocomplete v1.17.1
  path-intellisense v2.3.0  暂时不用
  prettier-vscode v6.3.2
  project-manager v12.0.1
  ruby v0.28.0
  sort-lines v1.9.0
  tabnine-vscode v3.2.17
  theme-dracula v2.22.3
  todo-tree v0.0.212
  vs-picgo v2.1.0
  vscode-ruby v0.27.0
  ruby solargraph
  vim
  
  ---
  
## chrome插件 surfingkeys
/ 查找
d 下滚
e 上滚
E 左标签
R 右标签 
t 或者b 书签查找
sg google搜索选中
og 打开谷歌搜索栏
yh 复制当前域名
yy 复制当前地址
x 关闭当前标签
X 恢复刚关闭的标签
on 打开新标签
n 下一处
N 上一处
返回前一个标签页 B
往后一个标签页 F



vim:
https://developer.aliyun.com/article/23883
https://tomotoes.com/blog/grammar-of-vim-cultivation-cheats/
https://github.com/justinmk/vim-sneak


## vscode:
https://code.visualstudio.com/docs/getstarted/userinterface
IDE https://baijiahao.baidu.com/s?id=1660324855189956389&wfr=spider&for=pc
https://juejin.cn/post/6844903826063884296

学习
https://www.thisfaner.com/p/vs-code-tips/
https://www.thisfaner.com/p/vs-code-skills/



一些最常用的快捷键 alt替换了shift
https://www.yuque.com/jeason/box/ntbebr


ctrl j # Toggle Panel 面板
ctrl b # Toggle Sidebar 侧边栏
ctrl , 
ctrl k, z

选中一个字符后，ctrl shift l 会在所有相同处编辑光标
shift alt i 在所有选中行末尾添加光标

alt uparrow 把当前行上移

ctrl l Select current line选中当前行

阅读源码用: 
https://geek-docs.com/vscode/vscode-tutorials/vs-code-refactor.html
https://www.axihe.com/tools/vscode/skill/vs-code-refactor.html
https://g.yuque.com/ynzy/vscode/sls0gl#2GAht
https://www.thisfaner.com/p/vs-code-skills/

《代码整洁之道》《代码大全2》《重构：改善既有代码的设计》
批量重命名 重构代码
- 定义或者声明快速跳转
- 快速搜索指定内容
- todo
- 同时修改本文件中所有匹配的
- 列出当前文件中的所有函数


[参考](https://www.php.cn/tool/vscode/439478.html)
常用的快捷键：
F12 跳转到符号定义（需要安装下面相关插件）
Alt+← 跳回
Command + “-”  返回上次位置
Command + SHilft + o : 列出当前文件中的所有函数 
Ctrl + Tab : 在最近打开的几个文件之间切换

找到所有的引用（展示相关）:   Shift+F12

同时修改本文件中所有匹配的:   Ctrl+F2

跳转到下一个 Error 或 Warning:   当有多个错误时可以按 F8 逐个跳转

移动到定义处:   F12

查看定义处缩略图(只看一眼而不跳转过去):    Alt+F12

?   列出当前可执行的动作

!   显示 Errors或 Warnings，也可以 Ctrl+Shift+M

:   跳转到行数，也可以 Ctrl+G 直接进入

@    跳转到 symbol（搜索变量或者函数），也可以 Ctrl+Shift+O 直接进入

@    根据分类跳转 symbol，查找属性或函数，也可以 Ctrl+Shift+O 后输入" : "进入

#   根据名字查找 symbol，也可以 Ctrl+T
