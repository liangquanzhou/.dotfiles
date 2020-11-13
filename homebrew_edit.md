踩坑记录：

更改homebrew配置

brew edit r

会更改/usr/local/Homebrew/Library/Taps/homebrew/homebrew-core/Formula/r.rb这个文件

更改之后，brew update
然后 brew reinstall --build-from-source r

taps 要加上:https://github.com/sethrfore/homebrew-r-srf
这个可以增加cairo 的 x11 支持

装rattle包参考：
http://microcell.ufl.edu/mcs-apps/videos/instructional-videos/r-mac.html

在$PATH里面也要相应的改动路径，包括x11要放最前，$PKG_CONFIG的路径要加上gtk+包
同时，brew 还要安装 libglade, freeglut


改/etc/hosts 文件增加对github访问的支持
