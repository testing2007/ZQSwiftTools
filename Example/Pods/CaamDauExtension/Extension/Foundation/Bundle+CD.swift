//Created  on 2018/12/13  by LCD :https://github.com/liucaide .

import Foundation
import UIKit




public extension CaamDau where Base: Bundle {
    
}

public extension Bundle{
    //MARK:--- Pod Bundle ζ£η΄’ ----------
    /// - from:bundle.url(forResource β(pod s.resource_bundles -> key)β
    static func cd_bundle(_ forClass:AnyClass, _ from:String? = nil) -> Bundle? {
        let bundle = Bundle(for: forClass)
        guard let bundleURL = bundle.url(forResource: from, withExtension: "bundle") else {
            //assertionFailure("πππ\(from) - ζ ζ³ζΎε° Bundle  π»")
            return nil
        }
        return Bundle(url: bundleURL)
    }
}
