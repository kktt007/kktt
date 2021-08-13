参考
[bash](https://ss64.com/bash/syntax-keyboard.html)

[computerhope参考](https://www.computerhope.com/ushort.htm)

[bash_shortcuts](https://kapeli.com/cheat_sheets/Bash_Shortcuts.docset/Contents/Resources/Documents/index)

[gnu bash function-index](https://www.gnu.org/software/bash/manual/html_node/Function-Index.html)

; 前删除单字
n 前删除词
M 回车
, 后删除单字
. 后删除词
i home
o end
w 删除到行首
d 删除到行末
f 右跳词
b 左跳词
原则就是: 左手尽量用修饰符， 右手尽量用主键，右手高频用字母,比,;'.要好很多

AHK:

ecs + - 一直大写

ecslock # 单独代表esc

CapsLock & `;:: Send, {BS} # ;为backspace键


CapsLock & [:: Send, {Esc} # [为esc

CapsLock & ':: Send, = # ' 为=号

## 删除:

CapsLock & n:: Send, ^{BS} # 向前删除单词

CapsLock & m:: Send, {Enter} # 代替enter

CapsLock & w:: Send, +{Home}{Del} # 删除到行首



CapsLock & ,:: Send, {Del} # 向后删除一个字符

CapsLock & .:: Send, ^{Del} # 向后删除单词

CapsLock & d:: Send, +{End}{Del} # 删除到行尾

## 移动

ctrl带有单词功能

alt带有选中功能(模拟shift+)

hl左右

jk下上

f # 单词左跳

b # 单词右跳

i # home

alt i # 选中到开头

ctrl + i 移动 等于ctrl+home 到文件开头


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
Toggle Panel Ctrl+J

https://code.visualstudio.com/docs/getstarted/keybindings

https://code.visualstudio.com/shortcuts/keyboard-shortcuts-windows.pdf

https://shortcutkiller.com/keyboard-shortcuts/visual-studio-code-shortcut-keys-windows/

https://shortlib.netlify.app/apps/visual-studio-code
Toggle Sidebar Visibility ctrl + b

https://www.software.com/src/top-vs-code-extensions-settings-shortcuts-and-more

https://www.randomshortcuts.com/vscode


https://www.shortcutfoo.com/app/dojos/vscode-win/cheatsheet

http://blog.jackiexiao.com/%E9%AB%98%E6%95%88%E5%B7%A5%E5%85%B7/vscode/

https://vscode-shortcuts.com/ 


https://code.visualstudio.com/docs/editor/codebasics



https://www.visualstudiotips.co.uk/

https://shortcuts.design/toolspage-visualstudiocode.html
https://keycombiner.com/collections/vscode/winlinux/
https://gist.github.com/nobitagit/649fd57e6d7871a2dd263251c51f7f3e

https://www.jianshu.com/p/2ecd5bf0769b
https://www.teilhabe40.de/fileadmin//user_upload/Dummy_PDFs/vs-code_cheat-sheet_windows.pdf

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


vscode自带的快捷键

insert line below
`ctrl + enter`


## meld
[Meld - Help](https://meldmerge.org/help/keyboard-shortcuts.html)
