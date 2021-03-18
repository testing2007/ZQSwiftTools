<p>
  <img src="https://github.com/liucaide/Images/blob/master/CaamDau/caamdau.png" align=centre />
</p>

[![CI Status](https://img.shields.io/travis/CaamDau/CaamDauValue.svg?style=flat)](https://travis-ci.org/CaamDau/Value)
[![Version](https://img.shields.io/cocoapods/v/CaamDauValue.svg?style=flat)](https://cocoapods.org/pods/CaamDauValue)
[![License](https://img.shields.io/cocoapods/l/CaamDauValue.svg?style=flat)](https://cocoapods.org/pods/CaamDauValue)
[![Platform](https://img.shields.io/cocoapods/p/CaamDauValue.svg?style=flat)](https://cocoapods.org/pods/CaamDauValue)
[![](https://img.shields.io/badge/Swift-4.0~5.0-orange.svg?style=flat)](https://cocoapods.org/pods/CaamDauValue)

# Value
基本数据类型转换、便捷取值

```
pod 'CaamDauValue'

pod 'CaamDau/Value'
```

```
let arr:[Any] = [3.0,
                 "3.6",
                 "",
                 -9,
                 [1,"2"],
                 [1:234,
                  "23":[1:2,
                        2:3,
                        3:4]
    ]
]
arr.intValue(1)
arr.uintValue(1)
let uu = arr.uint(3) ?? UInt(abs(arr.intValue(3)))
arr.uintAbsValue(3)
arr.floatValue(1)
arr.urlValue(2)
arr.arrayValue(4)
arr.stringValue(1).arrayValue(".")
arr.dictValue(5).dictValue("23")
"123.88".intValue
"12a3.88".int ?? 0
"123.88".folatValue
"123.88".arrayValue(".")
```