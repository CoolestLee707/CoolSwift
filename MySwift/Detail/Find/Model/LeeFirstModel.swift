//
//  LeeFirstModel.swift
//  MySwift
//
//  Created by daoj on 2018/5/29.
//  Copyright © 2018年 LCM. All rights reserved.
//

import UIKit

class LeeFirstModel: NSObject {

//    由于swift与objective-c的编译方式不同，用KVC字典转模型构造函数时，需要在属性前面加上@objc。
    
//    @objc var age :Int = 12
//    @objc var name :String? = "eeeee"

    
    var age :Int = 12
    var name :String? = "eeeee"
    
    override init() {
        
    }
    
    // 自定义构造函数
    init(name:String,age:Int){
        self.name = name
        self.age = age
    }
    
    
    init(dict:[String : Any]) {
        super.init()
        // 要调用系统的`setValue`方法就必须先调用系统的构造函数创建出对象
        setValuesForKeys(dict)
    }
    // 防止奔溃
    override func setValue(_ value: Any?, forUndefinedKey key: String) {
    }
    
}
