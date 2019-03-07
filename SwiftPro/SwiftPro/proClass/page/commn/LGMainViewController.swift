//
//  LGMainViewController.swift
//  SwiftPro
//
//  Created by zhangleigao on 2019/3/7.
//  Copyright © 2019 zhangleigao. All rights reserved.
//

import UIKit

class LGMainViewController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        setChildViewControllers()
    }
}

extension LGMainViewController {
    
    private func setController(dict:[String: String]) -> UIViewController{
        guard let clName = dict["className"],
            let clTitle = dict["title"],
            let lc = NSClassFromString(Bundle.main.spaceName + "." + clName) as? UIViewController.Type
            
            else {
                return UIViewController()
        }
        let vc = lc.init()
        vc.title = clTitle
        let nav = LGNavigationController.init(rootViewController: vc)
        return nav
    }
    
    private func setChildViewControllers() {
        let arr = [
            ["className": "HomeViewController", "title": "首页"],
            ["className": "DisCoverViewController", "title": "发现"],
            ["className": "PersonViewController", "title": "我的"],
        ]
        var controllerArray = [UIViewController]()
        
        
        for dict in arr {
            controllerArray.append(setController(dict: dict))
        }
        viewControllers = controllerArray
    }
}
