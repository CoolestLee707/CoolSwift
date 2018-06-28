//
//  BaseNavigationController.swift
//  MySwift
//
//  Created by daoj on 2018/5/18.
//  Copyright © 2018年 LCM. All rights reserved.
//

import UIKit

class BaseNavigationController: UINavigationController {

    override func viewDidLoad() {
        super.viewDidLoad()

        BaseNavigationController.setUpNavAppearance()

    }

    
    override func pushViewController(_ viewController: UIViewController, animated: Bool) {
        
        if self.viewControllers.count > 0 {
            
            viewController.navigationItem.leftBarButtonItem = UIBarButtonItem(image: UIImage(named: "back"), style: .plain, target: self, action: #selector(navigationBack))
            
            viewController.hidesBottomBarWhenPushed = true
        }
        super.pushViewController(viewController, animated: animated)
    }
    
    @objc func navigationBack() {
        
        popViewController(animated: true)
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}

//MARK: - 设置导航栏肤色
extension BaseNavigationController {
    
    fileprivate class func setUpNavAppearance()  {
        
//        let navBarAppearance = UINavigationBar.appearance()
        var navBarAppearance = UINavigationBar.appearance()
        if #available(iOS 9.0, *) {
            navBarAppearance = UINavigationBar.appearance(whenContainedInInstancesOf: [BaseNavigationController.self as UIAppearanceContainer.Type])
        }
        
        if #available(iOS 10.0, *) {  // 导航栏透明
            navBarAppearance.isTranslucent = true
        } else {
            self.init().navigationBar.isTranslucent = false
        }
        //设置导航栏颜色
        navBarAppearance.barTintColor = UIColor.orange
        
        //导航栏字体颜色
        let dict:NSDictionary = [NSAttributedStringKey.foregroundColor: UIColor.black,NSAttributedStringKey.font : UIFont.boldSystemFont(ofSize: 18)]
        navBarAppearance.titleTextAttributes = dict as? [NSAttributedStringKey : Any]
        
        //item颜色
        navBarAppearance.tintColor = UIColor.black
    }
}
