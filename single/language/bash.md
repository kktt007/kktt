A-Z Index of the Linux BASH command line

https://explainshell.com/explain?cmd=df

$@

https://sodocumentation.net/bash/topic/4797/internal-variables

https://linuxize.com/post/bash-functions/

https://tldp.org/LDP/abs/html/internalvariables.html

http://osr507doc.xinuos.com/en/OSUserG/_Passing_to_shell_script.html

https://www.ibm.com/docs/en/zos/2.1.0?topic=descriptions-sh-invoke-shell

https://www.grymoire.com/Unix/Sh.html

https://coderwall.com/p/85jnpq/bash-built-in-variables

https://sap1ens.com/blog/2017/07/01/bash-scripting-best-practices/

https://www.gnu.org/software/bash/manual/html_node/Bash-Variables.html

https://mywiki.wooledge.org/IFS


https://research.fit.edu/media/site-specific/researchfitedu/hep/heplaba/documents/conferences-and-workshops/national-amp-international/BashScripting_Butalla.pdf

http://www.softpanorama.org/Scripting/shells.shtml

https://www.cyberciti.biz/faq/bash-for-loop/

https://devmanual.gentoo.org/tools-reference/bash/index.html

https://www.tutorialspoint.com/unix/shell_scripting.htm

https://tldp.org/LDP/abs/html/index.html

[Bash Reference Manual](https://www.gnu.org/software/bash/manual/bash.html)

[Bash documentation — DevDocs](https://devdocs.io/bash/)

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

[The Unix Shell](https://swcarpentry.github.io/shell-novice/)

[Shell & Utilities](https://pubs.opengroup.org/onlinepubs/9699919799/utilities/contents.html)

[1. 学会使用命令帮助 — Linux Tools Quick Tutorial](https://linuxtools-rst.readthedocs.io/zh_CN/latest/base/01_use_man.html)

[BashSheet - Greg's Wiki](https://mywiki.wooledge.org/BashSheet)

[The Bash Hackers Wiki [Bash Hackers Wiki]](https://wiki.bash-hackers.org/start)

[Command-line interface - Wikipedia](https://en.wikipedia.org/wiki/Command-line_interface)

[Vertical bar - formulasearchengine](https://en.formulasearchengine.com/wiki/Vertical_bar)
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


## 0701
[] test conditions
if [condition] && [condition]; then

{range}

((c-style syntac))

$0 name of the script

$@ number of parameters

$# number of argument

$? status of last command

argument abbreviated as arg

Function parameters are the names listed in the function's definition.
Function arguments are the real values passed to the function.

;;
https://tldp.org/LDP/abs/html/special-chars.html

# Array in Bash
 array=(1 2 3 4)

array=('first element' 'second element' 'third element')


## 0702
The correct command separates all arguments with whitespaces
[ -f file ]

[ -f "my file" ]

https://mywiki.wooledge.org/BashFAQ/031


[[ 比[有自动纠错功能，var不需要quote也可以 ，不需要转义符

The header is called an interpreter directive (it is also called a hashbang or shebang). 
The #! must be at the very start of the file, with no spaces or blank lines before it.

https://mywiki.wooledge.org/FullBashGuide#Commands_and_Arguments
type -a bash

https://mywiki.wooledge.org/FullBashGuide#Special%20Characters

put double quotes around every parameter expansion!

# A sequence of more blank characters is treated as a single blank 多个空格只当成一个
$ echo Hello                little                  world
Hello little world

js
https://kknews.cc/code/43r6q6q.html

2、一定要重视基础

首先建立第一条技能线：就是前端由html，css，js组成;然后将其细化为第二条线，html是由html4和html5组成;第三条线，css由css2和css3组成;第四条线，js由es5和es6构成。

接下来是框架方面的延伸：css方向有less，html方向有bootstrap，js方向有jquery库。

再往下延伸一层：html、css方向，有前端构建工具;js除了jq库之外，还有更全面的前端框架，react、angular、vue。

再往下细化：react是一个view层方案，为了让它能够全面解决前端需求，需要Redux、react-router等作为补充。

再往下：就需要打包发布工具，Webpack。。。

这些都是一个合格的web前端工程师应该具备的能力。



原文網址：https://kknews.cc/code/o4zovkm.html

正则
https://kknews.cc/code/94bj4zb.html
