//
//  AppDelegate+AppService.swift
//  MySwift
//
//  Created by daoj on 2018/5/20.
//  Copyright © 2018年 LCM. All rights reserved.
//

import UIKit

extension AppDelegate {
    
//   wit中类方法是以class开头的方法，类似于oc中+开头的方法
     class func systemConfigration(window:UIWindow)  {
    
//        window.rootViewController = BaseTabBarViewController()
//        window.makeKeyAndVisible()
        
        
    LeeLog(message: "其他key，id等配置")
        
    }

    /*
     convenience:便利，使用convenience修饰的构造函数叫做便利构造函数
     便利构造函数通常用在对系统的类进行构造函数的扩充时使用。
     便利构造函数的特点：
     1、便利构造函数通常都是写在extension里面
     2、便利函数init前面需要加载convenience
     3、在便利构造函数中需要明确的调用self.init()
     
     */
    
}

