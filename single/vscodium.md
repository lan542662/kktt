# vscodium and neovim

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
---

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
  "key": "alt+l",
  "command": "selectNextSuggestion",
  "when": "suggestWidgetMultipleSuggestions && suggestWidgetVisible && textInputFocus"
},
{
  "key": "up",
  "command": "selectPrevSuggestion",
  "when": "suggestWidgetMultipleSuggestions && suggestWidgetVisible && textInputFocus"
},
{
  "key": "alt+h",
  "command": "selectPrevSuggestion",
  "when": "suggestWidgetMultipleSuggestions && suggestWidgetVisible && textInputFocus"
},
]
```

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
