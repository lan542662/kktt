A-Z Index of the Linux BASH command line

https://research.fit.edu/media/site-specific/researchfitedu/hep/heplaba/documents/conferences-and-workshops/national-amp-international/BashScripting_Butalla.pdf

http://www.softpanorama.org/Scripting/shells.shtml

https://www.cyberciti.biz/faq/bash-for-loop/

https://devmanual.gentoo.org/tools-reference/bash/index.html

https://www.tutorialspoint.com/unix/shell_scripting.htm

https://tldp.org/LDP/abs/html/index.html

https://sodocumentation.net/bash

https://riptutorial.com/bash/topic/4797/internal-variables

https://www.shellscript.sh/functions.html

https://mywiki.wooledge.org/FullBashGuide

https://www.ucartz.com/clients/index.php?rp=/knowledgebase/98/An-A-Z-Index-of-the-Linux-BASH-command-line.html

https://www.logicweb.com/kb/

https://pclinuxoshelp.com/index.php/Bash_tutorials

https://linuxgazette.net/tag/kb.html

https://kb.iu.edu/d/apek

https://kb.ucla.edu/articles/bash-scripting

https://caenfaq.engin.umich.edu/bash-shell

http://linuxmafia.com/kb/Devtools/

http://www.shelldorado.com/freenode/BashFaq.html

https://wiki.linuxquestions.org/wiki/Getting_help_from_IRC

https://blog.sanctum.geek.nz/links/

[Special-Parameters](https://bash.cyberciti.biz/guide/Category:Bash_Parameters)

[Special-Parameters](https://www.gnu.org/software/bash/manual/bash.html#Special-Parameters)

https://www.tutorialspoint.com/unix/unix-special-variables.htm

https://wiki.bash-hackers.org/syntax/shellvars

https://www.ibm.com/support/pages/special-parameters-shell-eg-ksh-bash-and-sh

https://mywiki.wooledge.org/BashGuide/Parameters


https://github.com/vinayhegde1990/devops-notes/blob/master/docs/source/Bash.rst

https://mrinalininunna.blogspot.com/2020/09/lesson-plan.html

https://hackr.io/tutorials/learn-linux-system-administration/page/5

https://www.coursef.com/bash-tutorials

https://sites.google.com/site/jangminpark/useful-links

https://rentalsz.com/shell-script-assign-variable/

https://knowledge.kitchen/Bash_shell_and_scripting

https://github.com/singalhimanshu/shell-script-basics

https://github.com/koalaman/shellcheck

https://www.baeldung.com/linux/bash-special-variables

https://opensource.com/article/18/5/you-dont-know-bash-intro-bash-arrays

https://similargo.com/site/compciv.org

http://www.compciv.org/bash-guide/


---

exercise

https://landoflinux.com/linux_bash_scripting_tutorial.html

https://www.shell-tips.com/bash/

http://www.macs.hw.ac.uk/~hwloidl/Courses/LinuxIntro/t1.html

https://devqa.io/tag/bash/

https://guide.bash.academy/

https://tiswww.case.edu/php/chet/

https://ryanstutorials.net/bash-scripting-tutorial/

https://www.kau.edu.sa/files/830/files/60761_linux.pdf

https://shellmagic.xyz/

https://linuxconfig.org/how-to-use-arrays-in-bash-script

https://linuxconfig.org/bash-scripting-tutorial-for-beginners

---

https://readthedocs.org/projects/codingart/downloads/pdf/latest/
https://tldp.org/LDP/Bash-Beginners-Guide/Bash-Beginners-Guide.pdf
https://github.com/google/styleguide/blob/gh-pages/shellguide.md

https://www.gnu.org/software/bash/manual/bash.html#Shell-Syntax
https://tldp.org/LDP/abs/html/index.html

# If the input indicates the beginning of a comment, the shell ignores the comment symbol (‘#’), and the rest of that line.

#==============================================================================
#!/bin/bash
#author:
#version:
#created:
#revision:
#==============================================================================

# https://github.com/azet/community_bash_style_guide
# https://github.com/nlopez/shell-style
set -eu -o


# basic structure
```
#!SHEBANG

CONFIGURATION_VARIABLES

FUNCTION_DEFINITIONS

MAIN_CODE
```

exit 0 (zero) if everything is okay
exit 1 - in general non-zero - if there was an error

# no space and need quote around strings
# Variables in the Bourne shell do not have to be declared, as they do in languages like C. But if you try to read an undeclared variable, the result is the empty string.
# export the variable for it to be inherited by another program
var="Hello World"
echo $var


- expr  only expects numbers
- read shell-builtin command
- export fundamental effect on the scope of variables

"
$
`
\
以上四个有特殊意义，除非使用转义符

在没有""情况下，tab就是space

shell programming has the power of C

# ; then and ; do should be the same line as the while, for or if
# https://google.github.io/styleguide/shellguide.html#s5.4-loops

# https://readthedocs.org/projects/codingart/downloads/pdf/latest/

# be aware of the syntax - the "if [ ... ]" and the "then" commands must be on different lines. Alternatively, the semicolon ";" can separate them:
如果不用;就需要then if else单独一行

if ; then
  ...
fi

while ; do
  ...
done

for ; do
  ...
done

for ...; do
  if ...; then
    ...
    ...
    if ...; then
      ...
    fi
  else
    ...
    if ...; then
      ...
    fi
  fi
done
    
while ...; do
  case ...; in
    a) ... ;;
    b) ... ;;
  esac
done

# breaking up lines
https://wiki.bash-hackers.org/scripting/style

## right and wrong
prefer ${var} than $var
prefer $@ than $*
prefer double quote strings
quote command substitutions spaces or shell meta characters

((a >b)) 

[[regular expression ]]

[ builtin as meaning test

put spaces around all your operators

man test 查看详情


## never do
never quote literal integers 
value=32 不需要引号

use $(command) instead of backticks `command`


The IFS variable is used in shells (Bourne, POSIX, ksh, bash) as the input field separator (or internal field separator)

## 3.1.2.1 Escape Character
\newline  the \newline is treated as a line continuation

## space
echo a b c # arguments, separated by spaces.

## ;
commands separated by a ;

command1 && command2 (command1 returns an exit status of zero (success))
command1 || command2 (command1 returns a non-zero exit status.)

---
vim 源码

https://www.cnblogs.com/sky-heaven/p/5641017.html

http://home.ustc.edu.cn/~boj/courses/linux_kernel/0_prepare.html

4.2 在 vim 中使用 cscope

https://blog.csdn.net/crper/article/details/54099319

http://94.191.61.169/2020/04/11/%E4%BD%BF%E7%94%A8vscode%E9%98%85%E8%AF%BB%E5%86%85%E6%A0%B8%E6%BA%90%E7%A0%81/

https://blog.csdn.net/H542723151/article/details/90478836

阅读本地内核源码
生成gtags标签
通过Command + Shift+p输入Global命令

在生成gtags数据库之后，就可以在VS Code中进行函数定义和引用的跳转了，相关的快捷键有：

F12	跳转到symbol的定义处
Shift + F12	查找所有引用了选中symbol的代码
Alt+F12	临时看一眼而不跳转过去(在该symbol下方展开面板，显示定义处代码)
Command+Shift+f	进行全局文本搜索
Ctrl+F12	同时修改本文件中所有匹配的
Ctrl+Shift+o	列出当前文件中所有函数
Command+’-‘	返回上次位置
Ctrl+Tab	在最近打开的文件中切换
F2	重命名：比如要修改一个方法名，可以选中后按F2，输入新的名字，回车，会发现所有的文件都修改过了
F8	跳转到下一个Error或Warning：当有多个错误时可以按F8逐个跳转

插件C-family Documentation Comments

F12 跳转到符号定义（需要安装下面相关插件）
Command + “-”  返回上次位置
Command + SHilft + o : 列出当前文件中的所有函数 
Ctrl + Tab : 在最近打开的几个文件之间切换
