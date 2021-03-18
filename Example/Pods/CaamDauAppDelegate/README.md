<p>
  <img src="https://github.com/liucaide/Images/blob/master/CaamDau/caamdau.png" align=centre />
</p>

[![CI Status](https://img.shields.io/travis/CaamDau/CaamDauValue.svg?style=flat)](https://travis-ci.org/CaamDau/AppDelegate)
[![Version](https://img.shields.io/cocoapods/v/CaamDauAppDelegate.svg?style=flat)](https://cocoapods.org/pods/CaamDauAppDelegate)
[![License](https://img.shields.io/cocoapods/l/CaamDauAppDelegate.svg?style=flat)](https://cocoapods.org/pods/CaamDauAppDelegate)
[![Platform](https://img.shields.io/cocoapods/p/CaamDauAppDelegate.svg?style=flat)](https://cocoapods.org/pods/CaamDauAppDelegate)
[![](https://img.shields.io/badge/Swift-4.0~5.0-orange.svg?style=flat)](https://cocoapods.org/pods/CaamDauAppDelegate)

# AppDelegate
> AppDelegate 解耦

## Installation

CaamDau is available through [CocoaPods](https://cocoapods.org). To install
it, simply add the following line to your Podfile:

```ruby
pod 'CaamDauAppDelegate'

pod 'CaamDau/AppDelegate'
```

### AppDelegate
```
class AppDelegate: UIResponder, UIApplicationDelegate {
    var window: UIWindow?
    lazy var composite: AppComposite = {
        return AppComposite([
            AppConfig(),
            AppWindow(window),
            AppUM(),
            AppPay()
        ])
    }()
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        return composite.application(application, didFinishLaunchingWithOptions:launchOptions)
    }
    func application(_ app: UIApplication, open url: URL, options: [UIApplication.OpenURLOptionsKey : Any] = [:]) -> Bool {
        return composite.application(app, open: url, options: options)
    }
}

```
### AppDelegate Modul
```
class AppWindow: AppProtocol {
    var window: UIWindow?
    init(_ win: UIWindow?) {
        window = win
    }
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey : Any]? = nil) -> Bool {
        let vc = VC_Tab.show()
        window?.rootViewController = vc
        window?.makeKeyAndVisible()
        return true
    }
}
```
```
class AppConfig: AppProtocol {
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey : Any]? = nil) -> Bool {
        return true
    }
    func application(_ app: UIApplication, open url: URL, options: [UIApplication.OpenURLOptionsKey : Any] = [:]) -> Bool {
        return true
    }
}
```
```
class AppPay: AppProtocol {
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey : Any]? = nil) -> Bool {
        return true
    }
    func application(_ app: UIApplication, open url: URL, options: [UIApplication.OpenURLOptionsKey : Any] = [:]) -> Bool {
        return true
    }
}
```

## Author

liucaide, 565726319@qq.com

## License

CaamDau is available under the MIT license. See the LICENSE file for more info.
