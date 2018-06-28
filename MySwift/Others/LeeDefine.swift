//
//  LeeDefine.swift
//  MySwift
//
//  Created by daoj on 2018/5/18.
//  Copyright © 2018年 LCM. All rights reserved.
//

import UIKit

let kScreenWidth = UIScreen.main.bounds.size.width
let kScreenHeight = UIScreen.main.bounds.size.height

let StatusBarHeight:CGFloat = UIApplication.shared.statusBarFrame.height
let kNavigationBarHeight :CGFloat = StatusBarHeight + 44
let BottomBarHeight :CGFloat = (kScreenHeight == 812 ? 83 : 49)
let BottomEmptyHeight :CGFloat = (kScreenHeight == 812 ? 34 : 0)

/// 主窗口代理
let KAppDelegate: AppDelegate = UIApplication.shared.delegate as! AppDelegate

// iOS在当前屏幕获取第一响应
let MGKeyWindow = UIApplication.shared.keyWindow
let MGFirstResponder = MGKeyWindow?.perform(Selector(("firstResponder")))

// MARK:- 通知
/// 通知中心
let LCMNotificationCenter = NotificationCenter.default

//自定义调试信息打印
func LeeLog<T>(message : T, file : String = #file, lineNumber : Int = #line) {
    
    #if DEBUG
    
    let fileName = (file as NSString).lastPathComponent
    print("[\(fileName):line:\(lineNumber)]- \(message)")
    
    #endif
}
