//
//  LeeDelegateViewController.swift
//  MySwift
//
//  Created by daoj on 2018/5/31.
//  Copyright © 2018年 LCM. All rights reserved.
//

import UIKit

class LeeDelegateViewController: BaseViewController,leeFirstdelegate,leeSecondDelegate {
    
//    lazy var wkWebView: WKWebView = {
//        //() -> WKWebView in
//        let tempWebView = WKWebView()
//        tempWebView.navigationDelegate = self
//        return tempWebView
//    }()
    
    lazy var leeview : LeeFirstView = {
        
//        () -> LeeFirstView in
        
        let tempView = LeeFirstView()
        return tempView
        
        }()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.title = "代理"
        
        self.view.addSubview(leeview)
        
        leeview.frame = CGRect(x: 20, y: kNavigationBarHeight + 20, width: kScreenWidth - 40, height: 300)
        leeview.backgroundColor = UIColor.red
        
        leeview.firstdelegate = self
        leeview.seconddelegate = self
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    func mustfunction() {
        LeeLog(message: "必须的方法1")
    }

    func mayfunction() {
        LeeLog(message: "可选的方法1")

    }
    
    func mustMethod() {
        LeeLog(message: "必须的方法2")
    }
    
    func mayMethod() {
        LeeLog(message: "可选的方法2")
    }

}
