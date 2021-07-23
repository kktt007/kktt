## zsh

zsh zsh-syntax-highlighting zsh-autosuggestions fzf ripgrep

sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

git clone https://github.com/rupa/z.git ~/github

git clone https://github.com/sindresorhus/pure.git "$ZSH_CUSTOM/themes/pure"

``` 一些问题 Restart your machine
chsh -s $(which zsh) // echo $SHELL to check  ///chsh -l //usermod -s /usr/bin/zsh kktt
root用户的shell别改，会出问题
- sudo chsh -s /bin/zsh $USER
- usermod -s /bin/zsh kktt
- 已存在的Home // adduser --home /home/kktt kktt
- exec /bin/zsh or exec /usr/bin/zsh
- /etc/adduser.conf

DSHELL=/bin/sh
to:

DSHELL=/bin/zsh

/etc/default/useradd
SHELL=/bin/sh
to:

SHELL=/bin/zsh
```
```
插件问题 查找路径
pacman -Ql zsh-autosuggestions

```


```.zshrc

export ZSH="/home/kktt/.oh-my-zsh"

# 本来是ys ,启用了pure后设置成空或删除
# 注意#后面的空格，注意pure的顺序靠后

# #source $ZSH_CUSTOM/themes/pure/pure.zsh no need, but if need, could use absolute path.
# zsh-autosuggestions zsh-syntax-highlighting must source foo.zsh.
# don't install zsh-completions and zsh-completions  no need to source.
# if any questions,just check if the path is in $fpath

ZSH_THEME=""  
fpath+=$ZSH_CUSTOM/themes/pure
plugins=(git git-prompt sudo fzf ripgrep npm yarn systemd aliases alias-finder z history zsh_reload)

source $ZSH/oh-my-zsh.sh
source ~/github/z.sh
# source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
# source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# You can't "export" your .bashrc to a .zshrc
# source ~/.bash_profile if below doesn't work
[[ -e ~/.profile ]] && emulate sh -c 'source ~/.profile'

# autoload the function compinit and to call it
autoload -U promptinit; promptinit
zstyle ':prompt:pure:prompt:*' color cyan
zstyle :prompt:pure:git:stash show yes
rm -f ~/.zcompdump; compinit
prompt pure

export VISUAL=nvim
export EDITOR="$VISUAL"

export QT_AUTO_SCREEN_SCALE_FACTOR=0
export QT_SCALE_FACTOR=1.5

if [ -n "$WINDOWID" ]; then
        TRANSPARENCY_HEX=$(printf 0x%x $((0xffffffff * 80 / 100)))
        xprop -id "$WINDOWID" -f _NET_WM_WINDOW_OPACITY 32c -set _NET_WM_WINDOW_OPACITY "$TRANSPARENCY_HEX"
fi

alias h='history'
alias ai='sudo pacman -S'
alias aiy='sudo pacman -Sy'
alias aiyu='sudo pacman -Syu'
alias aiyy='sudo pacman -Syy'

alias home='cd ~'

alias ..='cd ../'                           # Go back 1 directory level
alias ...='cd ../../'                       # Go back 2 directory levels
alias .3='cd ../../../'                     # Go back 3 directory levels
alias .4='cd ../../../../'                  # Go back 4 directory levels
alias .5='cd ../../../../../'               # Go back 5 directory levels
alias .6='cd ../../../../../../'            # Go back 6 directory levels

alias af='alias-finder'

```
