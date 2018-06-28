//
//  NSObject+Extension.swift
//  MySwift
//
//  Created by daoj on 2018/5/21.
//  Copyright © 2018年 LCM. All rights reserved.
//

import UIKit

extension NSObject {
    
    func alertShowInfo(info:String)  {
        
        if self.isKind(of: UIViewController.self) || self.isKind(of: UIView.self){
            let alertVc = UIAlertController(title: info, message: nil, preferredStyle: .alert)
            let cancelAction = UIAlertAction(title: "取消", style: .cancel, handler: nil)
            alertVc.addAction(cancelAction)
        UIApplication.shared.keyWindow?.rootViewController?.present(alertVc, animated: true, completion: nil)
            
        }
    }
}
