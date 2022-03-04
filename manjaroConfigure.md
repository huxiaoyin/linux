##### archlinuxcn

```
[archlinuxcn]
Server = https://mirrors.tuna.tsinghua.edu.cn/archlinuxcn/$arch
```
ERROR
remove the /etc/pacman.d/gnupg folder
pacman-key --init
pacman-key --populate archlinux

##### HIDPI

```
~/.Xresources

Xft.dpi: 144
Xft.autohint: 0
Xft.lcdfilter:  lcddefault
Xft.hintstyle:  hintfull
Xft.hinting: 1
Xft.antialias: 1
Xft.rgba: rgb
```

##### 下载中文字体

```bash
sudo pacman -S ttf-roboto noto-fonts ttf-dejavu
# 文泉驿
sudo pacman -S wqy-bitmapfont wqy-microhei wqy-microhei-lite wqy-zenhei
# 思源字体
sudo pacman -S noto-fonts-cjk adobe-source-han-sans-cn-fonts adobe-source-han-serif-cn-fonts
```

##### 安装搜狗拼音

```bash
sudo pacman -S fcitx5-im fcitx5-chinese-addons fcitx5-qt fcitx5-gtk

sudo vim ~/.pam_environment    #编辑配置文件

GTK_IM_MODULE DEFAULT=fcitx
QT_IM_MODULE  DEFAULT=fcitx
XMODIFIERS    DEFAULT=\@im=fcitx
INPUT_METHOD  DEFAULT=fcitx
SDL_IM_MODULE DEFAULT=fcitx

sudo pacman -S fcitx5-pinyin-zhwiki
sudo pacman -S fcitx5-pinyin-moegirl
sudo pacman -S fcitx5-nord
```

##### 科学上网

```bash
yay -S qv2ray v2ray 
#v2ray 默认内核路径/usr/bin/v2ray
#v2ray 默认资源目录/user/share/v2ray

sudo vim .xprofile #配置代理
export http_proxy="http://127.0.0.1:8889"
export https_proxy="http://127.0.0.1:8889" 
```

[免费中转节点](https://github.com/freefq/free)

[YouTuBe科学上网博主](https://www.youtube.com/channel/UCEBoI_hmSUNjRU4O86Y6TJg)

[SwitchyOmega pac](https://raw.githubusercontent.com/gfwlist/gfwlist/master/gfwlist.txt)

##### Software

zsh ( zsh-syntax-highlighting zsh-autosuggestions )

maim  截图（maim -u -f png | tee "$file"）

timeshift 系统还原

optimus-manager 双显卡

idea (  window manager $ wmname LG3D
        https://plugins.zhile.io
        IDE Eval Reset)

mysql 

```bash
mysqld --initialize --user=mysql 
sudo systemctl start mysqld
mysql_secure_installation
```
