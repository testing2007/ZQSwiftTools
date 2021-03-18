<p>
  <img src="https://github.com/liucaide/Images/blob/master/CaamDau/caamdau.png" align=centre />
</p>

[![CI Status](https://img.shields.io/travis/CaamDau/CaamDauExtension.svg?style=flat)](https://travis-ci.org/CaamDau/Extension)
[![Version](https://img.shields.io/cocoapods/v/CaamDauExtension.svg?style=flat)](https://cocoapods.org/pods/CaamDauExtension)
[![License](https://img.shields.io/cocoapods/l/CaamDauExtension.svg?style=flat)](https://cocoapods.org/pods/CaamDauExtension)
[![Platform](https://img.shields.io/cocoapods/p/CaamDauExtension.svg?style=flat)](https://cocoapods.org/pods/CaamDauExtension)
[![](https://img.shields.io/badge/Swift-4.0~5.0-orange.svg?style=flat)](https://cocoapods.org/pods/CaamDauExtension)

# Extension
便利性扩展
```
pod 'CaamDauExtension'

pod 'CaamDau/Value'
```

```
// UI配置
label?.cd
    .text("内容")
    .text(Config.color.txt_2)
    .text(Config.font.fontBold(13).fit())
    .rounded(...) //半圆角
    .gradient(...) //背景/文字渐变

// UIAlertController
UIAlertController().cd
    .title("提示")
    .title(UIColor.red).title(UIFont.sys..)
    .message("message")
    .action("取消")
    .action("修改", custom:{
        $0.cd.title(UIColor.gray)
    }, handler: { _ in
        
    })
    .show()

// 字符串处理
"13100000000"[3..<8] = "****"

// 数组去重
[["id":1], ["id":2], ["id":1]].cd_filter{$0.stringValue("id")}

// Color
let redhex = UIColor.red.hex
let color = UIColor.cd_hex("f", dark:"0")
let color = UIColor.cd_hex("f0", dark:"#0")


// UserDefauls
UserDefaulsUser.token.save("123")
let token = UserDefaulsUser.token.string ?? ""

// Notification
NoticeOrder.pay.add { (n) in
    debugPrint(n)
}
NoticeOrder.pay.post("123", userInfo: ["id":"456"])

// iconfont
let font = UIFont.iconFont(...)

.... 更多
```
