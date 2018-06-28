//
//  LeeLazyViewController.swift
//  MySwift
//
//  Created by daoj on 2018/5/30.
//  Copyright © 2018年 LCM. All rights reserved.
//

/*
    swift中也有懒加载的方式，并且在swift中有专门的关键字lazy来实现某一个属性实现懒加载。格式:lazy var 变量：类型 = {创建变量代码}(),懒加载的本质在第一次使用的时候执行闭包，将闭包的返回值赋值给属性，并且只会赋值一次。懒加载只能用于结构体或者类的成员变量中
 */

import UIKit

class LeeLazyViewController: BaseViewController {

    
    lazy var array : [String] = {
        ()->[String] in
        return ["llx","lll"]
    }()
    
    private let button: UIButton = {
        let button = UIButton()
        button.setTitleColor(UIColor.black, for: .normal)
        button.setTitle("跳转到 SecondViewController", for: .normal)
        button.sizeToFit()
        return button
    }()

    lazy var mainTableView : UITableView = UITableView()

    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.title = "懒加载"
        
        view.addSubview(button)
        
        button.snp.makeConstraints { (make) in
            make.left.equalTo(200)
            make.top.equalTo(200)
            make.right.equalToSuperview().offset(-10)
            make.height.equalTo(30)
        }
        button.addTarget(self, action: #selector(buttonClick), for: .touchUpInside)
        
    }

    @objc func buttonClick()  {
        
        
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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
