//
//  ViewController.swift
//  ZhiyinIOS
//
//  Created by Lambert on 2023/5/22.
//

import UIKit
import flutter_boost

class ViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationItem.title = "你干嘛哎哟"
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        var option:FlutterBoostRouteOptions = .init()
        option.pageName = "niganma://sing"
        FlutterBoost.instance().open(option)
    }
}

