AHK:

ecs + - 一直大写

ecslock # 单独代表esc

## 删除:
CapsLock & m:: Send, {BS} # 代替backspace
CapsLock & n:: Send, ^{BS} # 向前删除单词

CapsLock & d:: Send, +{Home}{Del} # 删除到行首



CapsLock & ,:: Send, {Del} # 向后删除一个字符
CapsLock & .:: Send, ^{Del} # 向后删除单词

CapsLock & f:: Send, +{End}{Del} # 删除到行尾

## 移动

ctrl带有单词功能

alt带有选中功能(模拟shift+)

hl左右

jk下上

w # 单词向后

b # 单词向前

i # home

alt i # 选中到开头



o # end

ctrl o  # 选中到结尾

## 大范围移动

u # page up

p # pagedown

## 鼠标移动

arrow key

将列出最最最常用的快捷

## 切换

g # 右击


## vscode:
https://code.visualstudio.com/docs/getstarted/tips-and-tricks
https://www.visualstudiotips.co.uk/
https://vscode-shortcuts.com/ 
https://shortcuts.design/toolspage-visualstudiocode.html
https://keycombiner.com/collections/vscode/winlinux/
https://gist.github.com/nobitagit/649fd57e6d7871a2dd263251c51f7f3e
https://code.visualstudio.com/shortcuts/keyboard-shortcuts-windows.pdf
https://www.jianshu.com/p/2ecd5bf0769b
https://www.teilhabe40.de/fileadmin//user_upload/Dummy_PDFs/vs-code_cheat-sheet_windows.pdf
https://www.randomshortcuts.com/vscode
https://usethekeyboard.com/vs-code/
https://www.makeuseof.com/tag/visual-studio-code-keyboard-shortcuts-cheat-sheet/
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