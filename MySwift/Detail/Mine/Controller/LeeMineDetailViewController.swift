//
//  LeeMineDetailViewController.swift
//  MySwift
//
//  Created by daoj on 2018/5/25.
//  Copyright © 2018年 LCM. All rights reserved.
//

import UIKit

class LeeMineDetailViewController: BaseViewController {

    var text: String!
    
    var titleLabel = UILabel()
    
//    定义一个optional的变量
//    let x:Optional =  10
    let x:Int? = 10
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

//        MARK:--- 某个页面禁止右滑返回
//        self.fd_interactivePopDisabled = true
   
//        MARK:--- 某个页面禁止右滑返回
    self.navigationController?.fd_viewControllerBasedNavigationBarAppearanceEnabled = true
        
        self.title = "我的信息"

        let label = UILabel(frame: CGRect(x: 10, y: kNavigationBarHeight + 10, width: 100, height: 20))
        label.backgroundColor = UIColor.red
        label.textColor  = UIColor.black
        label.text = self.text
        self.view.addSubview(label)

        self.view.addSubview(titleLabel)
        titleLabel.textColor = UIColor.yellow
        titleLabel.backgroundColor = UIColor.gray
        titleLabel.snp.makeConstraints { (make) in
            make.left.equalToSuperview().offset(10)
            make.top.equalTo(200)
            make.right.equalTo(-10)
            make.height.equalTo(20)
        }
        
        
        let urlStr = "www.baidu.com"
        let header = (urlStr as NSString).substring(to: 3)  //截取前三位
        
        let middle = (urlStr as NSString).substring(with: NSMakeRange(4, 5))//去除前四个字符截取，范围之后五位字符
        
        let footer = (urlStr as NSString).substring(from: 10)   //从第十个字符开始截取
        
        LeeLog(message: header+middle+footer)

//        “!”代表强制解包。它的意思是从可选值中强行获取对应的非空值,强制解包是危险操作，如果可选值为nil，强制解包系统会奔溃,swift中有规定，对象中的任何属性在创建对象时，都必须有明确的初始化值
        LeeLog(message: x! + x!)
        
//        let a:Int?
//        LeeLog(message: a)
        
//        let b:Int?
//        LeeLog(message: b)
        
        
        // Do any additional setup after loading the view.
    }

   
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    @objc func injected() {
        
        self.titleLabel.backgroundColor = UIColor.blue
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
