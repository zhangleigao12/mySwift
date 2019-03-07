//
//  UIButton+Extension.swift
//  SwiftPro
//
//  Created by zhangleigao on 2019/3/7.
//  Copyright © 2019 zhangleigao. All rights reserved.
//

import UIKit

extension UIButton {
    
    /// 创建按钮
    ///
    /// - Parameters:
    ///   - title: 标题
    ///   - fontSize: 标题大小
    ///   - normalColor: 标题正常颜色
    ///   - heightColor: 标题高亮颜色
    ///   - target: target
    ///   - action: 点击方法
    convenience init(title: String = "", fontSize: CGFloat = 16, normalColor: UIColor = .darkGray, heightColor: UIColor = .orange,normalImage: String = "", heightImage: String = "", target: Any?, action: Selector) {
        self.init(type: .custom)
        self.setTitle(title, for: .normal)
        self.titleLabel?.font = UIFont.systemFont(ofSize: fontSize)
        self.setTitleColor(normalColor, for: .normal)
        self.setTitleColor(heightColor, for: .highlighted)
        self.setImage(UIImage(named: normalImage), for: .normal)
        self.setImage(UIImage(named: heightImage), for: .highlighted)
        self.sizeToFit()
        self.addTarget(target, action: action, for: .touchUpInside)
    }
}
