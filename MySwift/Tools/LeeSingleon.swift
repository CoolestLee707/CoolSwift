//
//  LeeSingleon.swift
//  MySwift
//
//  Created by LiChuanmin on 2022/6/5.
//  Copyright © 2022 LCM. All rights reserved.
//

import UIKit

class LeeSingleon {
    
    var data = ""
    
    static let shared = LeeSingleon()
    private init() {
        // 不要忘记把构造器变成私有
    }
}


