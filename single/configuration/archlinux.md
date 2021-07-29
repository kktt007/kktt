# 分区 挂载分区有顺序，先是/然后是boot,然后是home
1m =2048sector
1byte = 8 bit(位)
1kb = 1024 byte=2 sector
1 sector = 512 byte

512m = 1048576 sector

/dev/sda1 efi system          512m  1048576   sector  boot

/dev/sda2 microsoft reserved  128m  262144    sector  

/dev/sda3 linux swap          16g   33554432  scetor        （相当于虚拟内存）

/dev/sda4 linux filesystem    150g  314572800 sector  /     （相当于c盘）

/dev/sda5 linux filesystem    余下的           sector  home  （相当于D盘 存储数据）

# arch-chroot /mnt

参考

https://github.com/XxAcielxX/arch-plasma-install

[脚本](https://github.com/krushndayshmookh/krushn-arch)

[mirror](https://archlinux.org/mirrorlist/?country=CN&protocol=http&protocol=https&ip_version=4#china)

reflector

reflector --country China --age 12 --fastest 8 --sort rate --save /etc/pacman.d/mirrorlist

reflector --fastest 20 --sort rate --save /etc/pacman.d/mirrorlist

Server = https://repo.huaweicloud.com/archlinux/$repo/os/$arch

Server = http://mirrors.aliyun.com/archlinux/$repo/os/$arch

Server = https://opentuna.cn/archlinuxcn/$repo/os/$arch

[archlinuxcn]

Server = https://repo.huaweicloud.com/archlinuxcn/$arch

Server = http://mirrors.aliyun.com/archlinuxcn/$arch

Server = https://opentuna.cn/archlinuxcn/$arch

## 必备

networkmanager nm-connection-editor dosfstools ntfs-3g git wget curl zsh zsh-autosuggestions zsh-syntax-highlighting zsh-completions bbswitch bash-completion rxvt-unicode

sudo(包括含在base-devel中)

pacman -S dialog wpa_supplicant netctl wireless_tools wpa_actiond

pacman -S dosfstools grub efibootmgr os-prober

intel-ucode

xorg-server xorg-server-common xorg-xrandr arandr xorg-xrdb xorg-xmodmap xkeycaps

qt kf5 kf5-aids plasma sddm packagekit-qt5

- sudo systemctl enable sddm.service 

- sudo systemctl enable NetworkManager.service //MMMMMMMMMM


## kde-system
dolphin kcron khelpcenter ksystemlog partitionmanager

## kde-utilities
konsole filelight kdf kgpg kate kbackup markdownpart kdialog kcharselect sweeper

## kde-graphics
gwenview  kcolorchooser okular kruler

## kde-network
kdeconnect kdenetwork-filesharing kget

xf86-input-libinput

alsa-utils pulseaudio pulseaudio-alsa alsa-plugins alsa-firmware kmix pavucontrol-qt

base-devel libx11 libxext
// base-devel包括(autoconf automake binutils bison fakeroot file findutils flex gawk gcc gettext grep groff gzip libtool m4 make pacman patch pkgconf sed sudo texinfo which)

xdg-user-dirs // `LC_ALL=C xdg-user-dirs-update` 命令可以强制创建英语目录

```
git clone https://aur.archlinux.org/yay.git
cd yay
makepkg -si
```

yay:

optimus-manager(systemctl enable optimus-manager.service)

optimus-manager-qt

------------------------
## 配置 https://wiki.archlinux.org/title/Hardware_video_acceleration 

nvidia nvidia-utils nvidia-settings libva-vdpau-driver libva-utils libva-intel-driver

ttf-joypixels wqy-microhei
(<string>文泉驿等宽微米黑</string>)

p7zip unrar tar unzip unarchiver tftp-hpa fd neovim cscope vim-jedi xsel nodejs yarn meld tmux weechat neofetch terminator flameshot mpv smplayer gstreamer gst-libav gst-plugins-good

vivaldi vivaldi-ffmpeg-codec

yay:

brave-bin chromium-vaapi chromium-widevine firefox-beta-bin vivaldi-widevine

nerd-fonts-meslo 

nerd-fonts-fira-code 

ttf-sarasa-gothic

ttf-twcns-fonts

st

(<string>MesloLGMDZ Nerd Font Mono</string>)

(<string>FiraCode Nerd Font Mono</string>)

(<string>等距更纱黑体 SC</string>)

---

## 工具

- sudo pacman -S python python-pip python-pipenv

yay：

- visual-studio-code-bin

appimagelauncher(appimagelauncher用来启动appimage程序,比如picgo,启动后可直接menu中找到)

- fcitx-im fcitx-rime kcm-fcitx fcitx-table-extra
fcitx-im 包括(fcitx-qt5 fctix)

```
sudo echo -e "export GTK_IM_MODULE=fcitx\nexport QT_IM_MODULE=fcitx\nexport XMODIFIERS=@im=fcitx\nexport LANG=en_US.UTF-8\nexport LANGUAGE=en_US:en_GB:en\nexport LC_CTYPE=en_US.UTF-8">>~/.xprofile
```

---

openwrt

```
perl-xml-parser bin86 asciidoc b43-fwcutter cdrtools mercurial fastjar intltool sharutils time xmlto qemu upx dtc lib32-glibc msmtp uglify-js libantlr3c gperf swig rsync
```

美化

icon: papirus-icon-theme

theme: materia-kde kvantum-theme-materia

kvantum-qt5(运行kvantummanager选择meteria's theme)

yay:

plasma5-applets-window-appmenu


## clean
sudo pacman -R $(pacman -Qdtq)          #清理系统中无用的依赖包
sudo pacman -Scc            #清理缓存，看路径像是之前下载的安装
## 配置缩放

系统设置→显示和监控→显示配置→缩放显示 150% = 96 +144*50%
系统设置→字体 144

- Smaller	100%	96
- Medium	125%	120
- Larger	150%	144
- Extra Large	200%	192

### 有kde就不需要设置以下
  - export QT_AUTO_SCREEN_SCALE_FACTOR=0
  - exportQT_SCALE_FACTOR=1.5 

(https://wiki.archlinux.org/title/HiDPI)
https://bugreports.qt.io/browse/QTBUG-53022


https://wiki.archlinux.org/title/Xrandr

查看信息
cvt -r 2560 1440

新建
/etc/X11/xorg.conf.d/10-monitor.conf

只要monitor就好

```
Section "Monitor"
    Identifier "HDMI-0"
    Modeline "2560x1440R"  241.50  2560 2608 2640 2720  1440 1443 1448 1481 +hsync -vsync
    Option "PreferredMode" "2560x1440R"
   
    Identifier "eDP-1-1" (此项可不设)
    Modeline "1920x1080R"  138.50  1920 1968 2000 2080  1080 1083 1088 1111 +hsync -vsync  
    Option "PreferredMode" "1920x1080R"
EndSection

```

临时设置，仅参考
xrandr --output HDMI-0 --auto --primary //将外接显示器设置为自动达到最优分辨率
xrandr --output eDP1 --scale 1.5x1.5
xrandr --output HDMI-1 --off --output eDP1-1 --auto 关闭hdmi,启用edpi
