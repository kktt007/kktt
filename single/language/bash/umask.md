umask

[Linux umask command help and examples](https://www.computerhope.com/unix/uumask.htm)

[umask](https://pubs.opengroup.org/onlinepubs/007904875/utilities/umask.html)

[What is Umask and How To Setup Default umask Under Linux? - nixCraft](https://www.cyberciti.biz/tips/understanding-linux-unix-umask-value-usage.html)

[chmod](https://pubs.opengroup.org/onlinepubs/9699919799/utilities/chmod.html#tag_20_17_13)

[chmod(1p) — Arch manual pages](https://man.archlinux.org/man/chmod.1p)

[umask - Wikipedia](https://en.wikipedia.org/wiki/Umask)

[File-system permissions - Wikipedia](https://en.wikipedia.org/wiki/File-system_permissions)

| Operator |                      Effect on the mask                      |
| :------: | :----------------------------------------------------------: |
|   `+`    | permissions specified are enabled, permissions that are not specified are unchanged. |
|   `-`    | permissions specified are prohibited from being enabled, permissions that are not specified are unchanged. |
|   `=`    | permissions specified are enabled, permissions that are not specified are prohibited from being enabled. |



---

| Operator |                      Effect on the mask                      |
| :------: | :----------------------------------------------------------: |
|   `+`    | permissions specified are enabled, permissions that are not specified are unchanged. |
|   `-`    | permissions specified are prohibited from being enabled, permissions that are not specified are unchanged. |
|   `=`    | permissions specified are enabled, permissions that are not specified are prohibited from being enabled. |



| Symbol |      Name       |                         Description                          |
| :----: | :-------------: | :----------------------------------------------------------: |
|  `r`   |      read       |        **r**ead a file or list a directory's contents        |
|  `w`   |      write      |               **w**rite to a file or directory               |
|  `x`   |     execute     |        e**x**ecute a file or recurse a directory tree        |
|  `X`   | special execute | See [Symbolic modes](https://en.wikipedia.org/wiki/Chmod#Symbolic_modes). |
|  `s`   |   setuid/gid    | See [File permissions](https://en.wikipedia.org/wiki/File_permissions). |
|  `t`   |     sticky      |                    See File permissions.                     |



| `umask -S` | display the current mask in symbolic notation |
| ---------- | --------------------------------------------- |
|            |                                               |

umask 777 等于 权限000 啥也没有

000 等于777

077等于 owner有所有,其余的都没有

umask 113等于 664 

#　(The `0` specifies that the *special modes* (setuid, setgid, sticky) may be enabled.)

umask 0755	equivalent to u-rwx,go=w # 0 - special permissions (setuid | setgid | sticky )



|  #   |        Sum         |  rwx  |       Permission        |
| :--: | :----------------: | :---: | :---------------------: |
| `7`  | 4(r) + 2(w) + 1(x) | `rwx` | read, write and execute |
| `6`  |    4(r) + 2(w)     | `rw-` |     read and write      |
| `5`  |  4(r)     + 1(x)   | `r-x` |    read and execute     |
| `4`  |        4(r)        | `r--` |        read only        |
| `3`  |    2(w) + 1(x)     | `-wx` |    write and execute    |
| `2`  |        2(w)        | `-w-` |       write only        |
| `1`  |        1(x)        | `--x` |      execute only       |
| `0`  |         0          | `---` |          none           |



###### Linux SETUID机制

[【Linux】理解setuid()、setgid()和sticky位 - puyangsky - 博客园](https://www.cnblogs.com/puyangsky/p/5307030.html#:~:text=%EF%BC%884%EF%BC%89setuid%EF%BC%8Csetuid%E7%9A%84,etc%2Fpasswd%E8%BF%99%E4%B8%AA%E6%96%87%E4%BB%B6%E4%BA%86%E3%80%82)



（1）进程运行时能够访问哪些资源或文件，不取决于进程文件的属主属组，而是取决于运行该命令的用户身份的uid/gid，以该身份获取各种系统资源。

 

（2）对一个属主为root的可执行文件，如果设置了SUID位，则其他所有普通用户都将可以以root身份运行该文件，获取相应的系统资源。

 

stick bit(粘滞位)的概念。它是针对目录来说的，如果该目录设置了stick bit(粘滞位)，则该目录下的文件除了该文件的创建者和root用户可以删除和修改/tmp目录下的stuff，别的用户均不能动别人的，这就是粘滞位的作用。

**如何设置UID、GID、STICK_BIT：**

SUID：置于 u 的 x 位，原位置有执行权限，就置为 s，没有了为 S .

chmod u+s xxx # 设置setuid权限

[chmod - Wikipedia](https://en.wikipedia.org/wiki/Chmod#Special_modes)

chmod 4551 file // 权限： r-sr-x—x

 



SGID：置于 g 的 x 位，原位置有执行权限，就置为 s，没有了为 S .

chmod g+s xxx # 设置setgid权限

chmod 2551 file // 权限： r-xr-s--x

 

STICKY：粘滞位，置于 o 的 x 位，原位置有执行权限，就置为 t ，否则为T .

chmod o+t xxx # 设置stick bit权限，针对目录

chmod 1551 file // 权限： r-xr-x--t