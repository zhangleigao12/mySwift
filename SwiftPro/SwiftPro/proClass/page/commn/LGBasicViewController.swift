//
//  LGBasicViewController.swift
//  SwiftPro
//
//  Created by zhangleigao on 2019/3/7.
//  Copyright © 2019 zhangleigao. All rights reserved.
//

import UIKit

class LGBasicViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
        // Do any additional setup after loading the view.
    }

}

extension LGBasicViewController {
    public func setupUI() {
        view.backgroundColor = UIColor.init().randColor
    }
}
