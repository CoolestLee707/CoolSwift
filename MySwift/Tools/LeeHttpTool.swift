//
//  LeeHttpTool.swift
//  MySwift
//
//  Created by daoj on 2018/5/30.
//  Copyright © 2018年 LCM. All rights reserved.
//
//用异步线程模拟网络数据请求，再回到主线程中回调闭包

import UIKit

class LeeHttpTool: NSObject {

    func loadData(callback:@escaping(_ jsonData:String) -> ()) {
        
        DispatchQueue.global().async {
            LeeLog(message: "发生网络请求:\(Thread.current)")
        }
        
        DispatchQueue.main.async {
            ()->Void in
            LeeLog(message: "获取到数据，并且回调：\(Thread.current)")
            callback("jsonData数据")
        }
    }
}
