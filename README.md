# ubuntu-deepin-wechat
Installer for Deepin WeChat with Wine

## Install Dependencies

```bash
cd deepin-wine-dependency
bash install.sh
```

## Install WeChat

```bash
sudo dpkg -i deepin.com.wechat_2.6.2.31deepin0_i386.deb
sudo apt-get install -f
```
 
## WeChat Version Too Old Issue

Please update your WeChat Windows installer if you encounter this problem.

```bash
mkdir /tmp/wechat
cd /tmp/wechat
wget https://dldir1.qq.com/weixin/Windows/WeChatSetup.exe
env WINEPREFIX=/home/${USER}/.deepinwine/Deepin-WeChat deepin-wine WeChatSetup.exe
```
