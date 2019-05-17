//
//  BaseTabBarViewController.swift
//  MySwift
//
//  Created by daoj on 2018/5/17.
//  Copyright © 2018年 LCM. All rights reserved.
//

import UIKit

class BaseTabBarViewController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        setUpChildViewController()
        
        self.tabBar.tintColor = UIColor.red
        
        self.tabBar.isTranslucent = false
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

extension BaseTabBarViewController {
    
    fileprivate func setUpChildViewController() {
        
        addChildViewController(childVc: HomeViewController(), title: "首页", imageName: "Tabbar_Home")
        addChildViewController(childVc: MessageViewController(), title: "消息", imageName: "Tabbar_Community")
        addChildViewController(childVc: FindViewController(), title: "发现", imageName: "Tabbar_Find")
        addChildViewController(childVc: MineViewController(), title: "我", imageName: "Tabbar_Mine")
    }
    
    /// 添加子控制器 swift支持方法的重载
    fileprivate func addChildViewController(childVc:UIViewController,title:String,imageName:String) {
        
        childVc.title = title
        
        //设置color
        childVc.tabBarItem.image = setTabbarImageColor(nameString: imageName)
        childVc.tabBarItem.selectedImage = setTabbarImageColor(nameString: imageName + "_selected")
        
        let childNav = BaseNavigationController(rootViewController: childVc)
        
        addChildViewController(childNav)
    }
    
    fileprivate func setTabbarImageColor(nameString:String) -> UIImage {
        
        
//        UIImageRenderingMode枚举值来设置图片的renderingMode属性。该枚举中包含下列值：
//
//            .Automatic  // 根据图片的使用环境和所处的绘图上下文自动调整渲染模式。
//            .AlwaysOriginal   // 始终绘制图片原始状态，不使用Tint Color。
//            .AlwaysTemplate   // 始终根据Tint Color绘制图片，忽略图片的颜色信息。
        
        var image:UIImage = UIImage(named: nameString)!;
        image = image.withRenderingMode(.alwaysOriginal)
        return image
    }
    
}
