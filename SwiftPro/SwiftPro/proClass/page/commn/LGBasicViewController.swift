//
//  LGBasicViewController.swift
//  SwiftPro
//
//  Created by zhangleigao on 2019/3/7.
//  Copyright © 2019 zhangleigao. All rights reserved.
//

import UIKit

class LGBasicViewController: UIViewController {

    lazy var navigationBar = LGNavigationBar(frame: CGRect(x: 0, y: 0, width: UIScreen.main.WIDTH, height: 64))
    lazy var naviItem = UINavigationItem()
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
        
    }
    
    override var title: String? {
        didSet {
            naviItem.title = title
        }
    }

}

extension LGBasicViewController {
    public func setupUI() {
        view.backgroundColor = UIColor.init().randColor
        view.addSubview(navigationBar)
        navigationBar.items = [naviItem]
        navigationBar.backgroundColor = UIColor(hex: "#f6f6f6")
        navigationBar.titleTextAttributes = [NSAttributedString.Key.foregroundColor: UIColor(hex: "#606060")]
    }
}
