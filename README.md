# DCHUD
DCHUD is based on the MBProgressHUD package.

DCHUD是针对MBProgressHUD的封装，包含了几种常用的提示类型，演示效果如下：

![image](http://raw.github.com/CoderXWChu/DCHUD/master/screenshots/DCHUD.gif)

具体用法见 Demo .

### 如何安装

安装
==============

### 手动安装

1. 下载 DCHUD 文件夹内的所有内容。
2. 将 DCHUD/DCHUD/DCHUD 内的源文件添加(拖放)到你的工程。
3. 注意 DCHUD 文件夹下包含了 MB, 如果你的工程中已经含有 MB, 需要将 Lib 文件夹下的文件移除.

使用
==============

DCHUD 支持MB的主线程操作要求, 所有操作都会在主线程中执行. 

```objc
// 显示一个成功消息, 3秒后移除
[DCHUD dc_showSuccessMessage:@"登录成功!" hideAfter:3.0];


// 显示一个错误消息, 3秒后移除
[DCHUD dc_showErrorMessage:@"参数错误!" hideAfter:3.0];


// 显示正在加载(带菊花)的 HUD, 3秒后移除
[DCHUD dc_showIndeterminateHUDWithTitleType:DCHUDTitleTypeLoading hideAfter:3.0];


// 显示一个普通消息, 3秒后移除
[DCHUD dc_showMessage:@"你好，我只是一条普通的消息." hideAfter:3.0];


//  显示一个成功消息
[DCHUD dc_showSuccessMessage:@"登录成功!"];

// 隐藏HUD
[DCHUD dc_hidePresentedHUD];

// 以上 API 均不能与下方页面进行交互

// 显示错误消息, 支持与下方界面交互
[DCHUD dc_showErrorMessage:@"参数错误!" userInterfaceEnable:YES];


```

###更多 API 见 DCHUD.h

