Sed

grep

## grep
https://www.gnu.org/software/grep/manual/grep.pdf

[Invoking (GNU Grep 3.7)](https://www.gnu.org/software/grep/manual/html_node/Invoking.html)

https://sed.js.org/

https://www.theunixschool.com/p/awk-sed.html

https://www.grymoire.com/Unix/Sed.html#uh-16

-i in-place instead of printing to standard output

https://www.panix.com/~elflord/unix/sed.html

http://www.linux-tutorial.info/?page_id=222

```
Sed -i ‘s/hello/world/‘ file.txt
```

https://www.gnu.org/software/sed/manual/sed.html#Introduction

https://en.wikipedia.org/wiki/Sed

https://tldp.org/LDP/Bash-Beginners-Guide/html/chap_05.html

http://sed.sourceforge.net/

https://www.panix.com/~elflord/unix/sed.html

https://sed.js.org/help.html

https://en.wikibooks.org/wiki/Sed

https://sites.uclouvain.be/SystInfo/manpages/man1/sed.1.html

## note
https://www.gnu.org/software/sed/manual/sed.html#Introduction

https://linux.die.net/man/1/sed

sed script inputfile

For example, to replace all occurrences of ‘hello’ to ‘world’ in the file input.txt:
sed 's/hello/world/' input.txt > output.txt
1. 内置
- By default sed prints all processed input
-i just edit to such file
-n no output
45p only print line 45

- treats multiple input files as one long stream.

-e 's/hello/world/'和-f myscript.sed 效果一样

'' script
's/regexp/replacement/flags'
W 
-i

- Exit status
0 Successful completion.
1 Invalid command, invalid syntax, invalid regular expression
2  input file errors
4  I/O error

- [sed, a stream editor](https://www.gnu.org/software/sed/manual/sed.html#sed-addresses)
'30,35d' d is the delete command

Commands within a script or script-file can be separated by semicolons (;) or newlines (ASCII 10). Multiple scripts can be specified with -e or -f options.

- [sed, a stream editor](https://www.gnu.org/software/sed/manual/sed.html#commands%20summary)

2. 相关命令

cat
| pipe
<
>

## cat
cat foo
cat foo1
cat foo foo1 > foo2

## set
-o

## Output redirection with > greater-than symbol
[Simple redirections](https://tldp.org/LDP/intro-linux/html/sect_05_01.html)

[Input/Output Redirection in the Shell](https://thoughtbot.com/blog/input-output-redirection-in-the-shell)

[Input and Output Redirection](http://www.softpanorama.org/Scripting/Shellorama/input_and_output_redirection.shtml)

[How-To: Redirection and Process Substitution - Linux - SS64.com](https://ss64.com/bash/syntax-redirection.html)

[zsh: 7 Redirection](https://zsh.sourceforge.io/Doc/Release/Redirection.html#Redirection)

[Bash One-Liners Explained, Part III: All about redirections](https://catonmat.net/bash-one-liners-explained-part-three)

[Standard streams - Wikipedia](https://en.wikipedia.org/wiki/Standard_streams)

[Chapter 18. I/O redirection](https://linux-training.be/funhtml/ch18.html)

[Shell Command Language](https://pubs.opengroup.org/onlinepubs/9699919799/utilities/V3_chap02.html)


> will empty a exist file or create a new noexist file

>> operator append

< standard input 0

> standard output 1

Redirect stdout to stdout (FD 1)
>&1

Redirect stdout to stderr (FD 2)
>&2

[sed, a stream editor](https://www.gnu.org/software/sed/manual/sed.html#sed-addresses)

[sed, a stream editor](https://www.gnu.org/software/sed/manual/sed.html#sed-script-overview)

[General good housekeeping](https://tldp.org/LDP/intro-linux/html/sect_07_01.html#sect_07_01_01)

[Advanced redirection features](https://tldp.org/LDP/intro-linux/html/sect_05_02.html)

[Redirecting Input and Output](https://fsl.fmrib.ox.ac.uk/fslcourse/unix_intro/io.html)

[Input and output redirection - IBM Documentation](https://www.ibm.com/docs/en/aix/7.1?topic=administration-input-output-redirection)

[Redirection (computing) - Wikipedia](https://en.wikipedia.org/wiki/Redirection_(computing))

[Bash pipe tutorial](https://linuxhint.com/bash_pipe_tutorial/)

[Learn the Command Line: Redirecting Input and Output Cheatsheet | Codecademy](https://www.codecademy.com/learn/learn-the-command-line/modules/learn-the-command-line-redirection/cheatsheet)

[Linux command basics reference guide - Linux tutorial from PenguinTutor](http://www.penguintutor.com/linux/command-basics-reference)

[Pipes and Redirects - Master the Bash Shell](https://www.educative.io/courses/master-the-bash-shell/3w5GrpYLENn)


[I/O Redirection and Pipes](https://homepages.uc.edu/~thomam/Intro_Unix_Text/IO_Redir_Pipes.html)

## bash
[Advanced Bash Shell Scripting Guide - Special Characters](https://www.linuxtopia.org/online_books/advanced_bash_scripting_guide/special-chars.html)

| and |& [Bash Reference Manual](https://www.gnu.org/savannah-checkouts/gnu/bash/manual/bash.html)

2>&1 # & 表示等同于的意思，2>&1，表示2的输出重定向等同于1

1 表示stdout标准输出，系统默认值是1，所以">/dev/null"等同于 "1>/dev/null"

- 0表示标准输入

- 1表示标准输出

- 2表示标准错误输出

- > 默认为标准输出重定向，与 1> 相同

- 2>&1 意思是把 标准错误输出 重定向到 标准输出.(2>1把标准错误输出到文件1)

- &>file 意思是把 标准输出 和 标准错误输出 都重定向到文件file中()相当于>file 2>&1的组合体)

- |& was added to Bash 4 as an abbreviation for `2>&1 |`

- ls > dirlist 2>&1和ls 2>&1 > dirlist的区别 [Bash Reference Manual](https://www.gnu.org/software/bash/manual/bash.html#Redirecting-Output)
第二个没有stderr到文件

>和>| [Special Characters](https://tldp.org/LDP/abs/html/special-chars.html) >| redirection operator - the redirection will work, even if noclobber is set.强制重定向

basic
[I/O Redirection](https://tldp.org/LDP/abs/html/io-redirection.html)

[BASH Programming - Introduction HOW-TO: All about redirection](https://tldp.org/HOWTO/Bash-Prog-Intro-HOWTO-3.html)

[Bash scripting cheatsheet](https://devhints.io/bash)

[Chapter 1. GNU/Linux tutorials](https://www.debian.org/doc/manuals/debian-reference/ch01.en.html)

[Bash Guide for Beginners](https://tldp.org/LDP/Bash-Beginners-Guide/html/Bash-Beginners-Guide.html)


## note:

https://www.gnu.org/software/sed/manual/sed.html#Other-Resources

https://www.gnu.org/software/sed/manual/sed.html#index-0-address

By default sed prints all processed input 

sed treats multiple input files as one long stream.

-n --quiet --silent # disable this automatic printing, suppress output

-i --in-place # edit in-place

-e --expression

-f --file

; semicolons # separete commands or newlines (ASCII 10) line feed LF

all sed commands may be separated by newlines


sed '1d
3d
5d'

A semicolon (‘;’) may be used to separate most simple commands:

sed '1d;3d;5d'

[sed, a stream editor](https://www.gnu.org/software/sed/manual/sed.html#Branching-and-flow-control)

b
branch unconditionally (that is: always jump to a label, skipping or repeating other commands, without restarting a new cycle). Combined with an address, the branch can be conditionally executed on matched lines.

t
branch conditionally (that is: jump to a label) only if a s/// command has succeeded since the last input line was read or another conditional branch was taken.

T
similar but opposite to the t command: branch only if there has been no successful substitutions since the last input line was read.

## https://www.gnu.org/software/sed/manual/sed.html#sed-addresses

- replace
's/hello/world/'

- replace only on line 144
'144s/hello/world/'

- replace only in lines containing the world 'apple'
'/apple/s/hello/world/'

- replace only in lines 4 to 17(inclusive)
'4,17s/hello/world/'

- replace only in lines not containing the word 'apple'
'/apple/!s/hello/world/'

- replace only in lines excluding lines 4 to 17
'4,17!s/hello/world/'

- first~step
seq 10 | sed -n '0~4p'

## command

s command
‘s/regexp/replacement/flags

- d delete
'30,35d' delete lines 30 to 35

- q quit
'/^foo/q42' if found a line starting with the word 'foo', terminate with exit status 42

- n skip lines
'n;n;s/./x/' skip 2 lines
'n;n;n;s/./x/' skip 3 lines

## https://www.gnu.org/software/sed/manual/sed.html#Multiple-commands-syntax
- a,c,i (append/change/insert)

- Separate the commands using -e or a newline:
```
-e 1aHello -e 2d
```
```
'1aHello
2d'
```

以下可以
```
sed '1a\
Hello
2d'
```

---

- # (comment)
A comment, until the next newline.

## commands summary
https://www.gnu.org/software/sed/manual/sed.html#sed-commands-list

{ cmd ; cmd ... }
Group several commands together.
