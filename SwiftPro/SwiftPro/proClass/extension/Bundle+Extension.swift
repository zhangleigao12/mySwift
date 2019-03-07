//
//  Bundle+Extension.swift
//  SwiftPro
//
//  Created by zhangleigao on 2019/3/7.
//  Copyright © 2019 zhangleigao. All rights reserved.
//

import UIKit

extension Bundle {
    
    
    /// 获取命名空间
    var spaceName: String {
        return Bundle.main.infoDictionary?["CFBundleName"] as? String ?? ""
    }
    
    
}

