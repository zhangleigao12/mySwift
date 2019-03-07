//
//  LGNavigationBar.swift
//  SwiftPro
//
//  Created by zhangleigao on 2019/3/7.
//  Copyright © 2019 zhangleigao. All rights reserved.
//

import UIKit

class LGNavigationBar: UINavigationBar {
    override func layoutSubviews() {
        super.layoutSubviews()
        
        for subView in self.subviews {
            let classStr = NSStringFromClass(subView.classForCoder)
            if classStr.contains("UIBarBackground") {
                subView.frame = self.bounds
            }else if classStr.contains("UINavigationBarContentView") {
                subView.frame = CGRect(x: 0, y: 20, width: UIScreen.main.WIDTH, height: 44)
            }
            
            
        }
    }

}
