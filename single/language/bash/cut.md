##　cut

总有一个人的书适合你,总有一些例子让你看明白,所有的说明就是建立在概念本身的基础上的说明

截取每行部分

https://www.cnblogs.com/dong008259/archive/2011/12/09/2282679.html

https://pubs.opengroup.org/onlinepubs/7908799/xcu/cut.html

https://ftp.gnu.org/old-gnu/Manuals/textutils-2.0/html_mono/textutils.html#SEC34

http://gnu.ist.utl.pt/software/coreutils/manual/html_mono/coreutils.html#cut-invocation

https://www.gnu.org/software/coreutils/manual/coreutils.html#cut-invocation

[file]没有或者是-,默认从stardard input读取

####  EXIT STATUS

> The following exit values are returned:
>
> - 0
>
>   All input files were output successfully.
>
> - >0
>
>   An error occurred.

####  CONSEQUENCES OF ERRORS

cut -b list [file]

cut -c list [file]

cut -f list [-d delim] [file] # The default is the tab character.



e.g:

cut -d : -f -2,3-5,6- /etc/passwd # 截取文件中开头到2,3到5,6到最后,

cat myfile.txt | cut -d \; -f 2 > output.txt #　Parse out column 2 from a semicolon (;) delimited file:

cut -d : -f 1,7 /etc/passwd

