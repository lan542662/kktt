pdf

https://vimhelp.org

https://nathangrigg.com/vimhelp/vimhelp-ipad.pdf

https://readthedocs.org/projects/vimguide/downloads/pdf/latest/

https://doc.lagout.org/operating%20system%20/linux/

https://learnvimscriptthehardway.stevelosh.com

https://vim-jp.org/vimdoc-en/index.html

# [scroll](https://vimhelp.org/scroll.txt.html)

```
CTRL-E  scroll window 逐行下移

CTRL-Y  逐行上移
```

```
CTRL-D  scroll windows 按scroll默认值half a screen下移 

CTRL-U  half a screen上移
```

```
CTRL-F  scroll  Scroll window [count] pages Forwards 一个屏幕下移

CTRL-B  Scroll window [count] pages Backwards 一个屏幕上移
```

```
z+ 顶部为参考，下移一个屏幕
z^  above the window at the bottom of the window 底部为参考，上移一个屏幕
```

## scroll relative to cursor

```
z<CR> line [count] at top of window 让光标所在行处于窗口顶端

zt  Like "z<CR>" 保持光标留在同样的列
```

z{height}<CR> 让make window {height} lines tall窗口使用一定数值的高度，比如z100

```
z.  让当前行处在windows中间的位置line [count] at center of window 

zz   Like "z.",保持光标列不变
```

z-  光标在底部

zb  Like "z-",保持光标列


## 光标水平移动

zl  右移

zh	左移

zL  半屏右移

zH  半屏左移

---

# motion

CTRL-G  显示光标所在位置

The motion commands can be used after an operator command
先有动作，后有移动,并且数量叠加

"2d3w" deletes six words.

doubling the operator it operates on a line. 双操作符作用于一行

3dd deletes three lines.

2y3y yanks six lines  数量叠加

v 多行模式，以光标位置做参考

V 多行模式，包括此行

CTRL-V  列模式

```
h或backspace  左

l或space  右
```

```
k或CTRL-P 上移

- first no black
```

```
j或CTRL-J或CTRL-N或  下移

+或CTRL-M或<CR>  first no blank
```


0 起始 类似home 不包括首个tab，其余都包括

^ 起始，不包括tab，也不包括任何空格 no blank

$ 类似end

g0  屏幕上本行最左侧To the first character of the screen line.

g^  同g0 no blank

g$  同$ 屏幕上最右侧no black

f{char} 按搜索的字符移动

F{char}  同上，反向

t{char} 出现在字符前

gk gj exclusive motion.not linewise.也就是忽视lines wrap

G就是<C-End>  default last line, on the first non-blank character

gg就是<C-Home>  default first line, on the first non-blank character linewise.

:[range] 或 {count}%  {count} percentage in the file

## word motion 单词移动

1. w就是<S-Right>  [count] words forward

e Forward to the end of word

2. b就是<S-Left> 向后回移

ge  Backward to the end of word 

## Text object motions 文本块移动

  dl  delete character
diw delete inner word
dd delete one line
dis delete inner sentence
dib deleter inner block()
dip delete inner paragraph
diB delete inner {}block
gdn delete the next search pattern match 


移动命令
'或者`
'( 移动到当前句子开头

') 移动到当前句子末尾

'{}段落

'[] 之前复制改变的地方

'.上次改变的地方

'"上次退出的地方

'' m'标记的地方
`` m`标记的地方

'a ma做标记的地方

' 标记不能被删除

:makrs 列出标记

:delm {makrs} 删除标记aA b p-z ^ . [] \"(这个需要反斜杠)

 ---
  
  # 粘贴

p 粘贴在当前光标后
P 粘贴在当前光标前

gp 光标放在粘贴后的内容的后面以后

[] 教程， 用,或;隔开
        .               the current line                          :.
        $               the last line in the file                 :$
        %               equal to 1,$ (the entire file)

Vim uses the contents of the unnamed register for any put command (p or P)
which does not specify a register.、
所以不指定"register，vim默认实用空register""或者是"0(最对最近一次复制)

When the clipboard is not available or not
working, the unnamed register is used instead.

When the "unnamed" string is included in the 'clipboard' option, the unnamed
register is the same.
这时候就不需要再添加"* 直接p即可

 "*, "+ and "~ 生效当clipboard启用的时候，未启用clipboard的时候启用的是unnamed register

"% 文件名

": 最近输出的命令 @:会直接在命令说输入上次的命令

"/ 最近一次search pattern的内容

:1,3 m 5 指把1~3行移动到第5行，3到5的位置

:[range]co[py] {address}
:1,3 co 5 指把1~3复制到5下面的位置，1从6开始，以此类推

# uodo

u 撤销

ctrl-r 取消撤销

# visual模式

https://vimhelp.org/visual.txt.html#Visual

4. Operating on the Visual area    


CTRL-C 类似Esc

Visual mode is a flexible and easy way to select a piece of text for an
operator.  It is the only way to select a block of text.

J Join [count] lines

{Visual}J               Join the highlighted lines,


v_X 或v_D 删除这一行

In Visual block mode
{Visual}["x]D 从高亮的地方删除到行尾，也就是保留高亮前的字符

When using CTRL-V operates on the block only.

