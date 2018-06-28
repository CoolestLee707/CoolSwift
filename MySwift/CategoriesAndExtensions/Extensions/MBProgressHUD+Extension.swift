//
//  MBProgressHUD+Extension.swift
//  MySwift
//
//  Created by daoj on 2018/5/23.
//  Copyright © 2018年 LCM. All rights reserved.
//

import Foundation

extension MBProgressHUD {
    
    
    //MARK:- 显示菊花
    class func show()  {
        
        let view = viewToShow()
        let hud = MBProgressHUD.showAdded(to: view, animated: true)
        hud.mode = .indeterminate
        hud.tintColor = UIColor.red
        hud.bezelView.backgroundColor = UIColor.black
        hud.hide(animated: true, afterDelay: 3)
        hud.removeFromSuperViewOnHide = true
    }
    
    //MARK:- 显示普通消息
    class func showInfo(_ title:String)  {
    
        let view = viewToShow()
        let hud = MBProgressHUD.showAdded(to: view, animated: true)
        hud.label.text = title
        hud.mode = .text
        hud.bezelView.backgroundColor = UIColor.yellow
        hud.hide(animated: true, afterDelay: 3)
        hud.removeFromSuperViewOnHide = true
    }
    
    
    //MARK:- 显示等待消息
    class func showWait(_ title: String) {
        let view = viewToShow()
        let hud = MBProgressHUD.showAdded(to: view, animated: true)
        hud.label.text = title
        hud.hide(animated: true, afterDelay: 3)
        hud.removeFromSuperViewOnHide = true
    }
    
    //MARK:- 显示成功消息
    class func showSuccess(_ title: String) {
        let view = viewToShow()
        let hud = MBProgressHUD.showAdded(to: view, animated: true)
        hud.mode = .customView //模式设置为自定义视图
        hud.customView = UIImageView(image: UIImage(named: "tick")!) //自定义视图显示图片
        hud.label.text = title
        hud.removeFromSuperViewOnHide = true
        //HUD窗口显示1秒后自动隐藏
        hud.hide(animated: true, afterDelay: 1)
    }
    
    //MARK:- 显示失败消息
    class func showError(_ title: String) {
        let view = viewToShow()
        let hud = MBProgressHUD.showAdded(to: view, animated: true)
        hud.mode = .customView //模式设置为自定义视图
        hud.customView = UIImageView(image: UIImage(named: "cross")!) //自定义视图显示图片
        hud.label.text = title
        hud.removeFromSuperViewOnHide = true
        //HUD窗口显示1秒后自动隐藏
        hud.hide(animated: true, afterDelay: 1)
    }
    
    //MARK:- 获取用于显示提示框的view
    class func viewToShow() -> UIView {
        var window = UIApplication.shared.keyWindow
        if window?.windowLevel != UIWindowLevelNormal {
            let windowArray = UIApplication.shared.windows
            for tempWin in windowArray {
                if tempWin.windowLevel == UIWindowLevelNormal {
                    window = tempWin;
                    break
                }
            }
        }
        return window!
    }
}
