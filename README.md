# zzxworld/vimrc

我的 Vim 配置。

## 安装指南

1.  安装 Vim

    osx: `brew install vim`

    ubuntu: `sudo apt install vim`

2.  安装 Vim 插件管理工具: [Vundle](https://github.com/VundleVim/Vundle.vim)

    Clone Vundle 源码到指定位置:

        git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

    在 Vim 中执行 `:PluginInstall` 命令。

3.  安装 [powerline/fonts](https://github.com/powerline/fonts) 美化状态栏。

    Clone 到本地:

        git clone https://github.com/powerline/fonts.git --depth=1

    安装字体:

        cd fonts
        ./install.sh
