//
//  SaveTools.swift
//  MySwift
//
//  Created by daoj on 2018/5/21.
//  Copyright © 2018年 LCM. All rights reserved.
//

import UIKit

class SaveTools: NSObject {
    
    //MARK: - UserDefaults
    // 存储
    class func LCM_SaveToLocal(value:Any,key:String?)  {
        
        UserDefaults.standard.set(value, forKey: key!)
        UserDefaults.standard.synchronize()
    }
    
    // 读取
    
    class func LCM_getLocalData(key:String) -> Any {
        
        return UserDefaults.standard.object(forKey:key) as Any
        
    }
}
