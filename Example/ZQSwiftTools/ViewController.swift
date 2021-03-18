//
//  ViewController.swift
//  ZQSwiftTools
//
//  Created by testing2007 on 03/18/2021.
//  Copyright (c) 2021 testing2007. All rights reserved.
//

import UIKit
import ZQSwiftTools


class ViewController: UIViewController {

    @IBOutlet weak var btn: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        _ = btn.setCorner(5).setBorder(2, color: UIColor.orange)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

