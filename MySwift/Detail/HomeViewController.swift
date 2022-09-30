//
//  HomeViewController.swift
//  MySwift
//
//  Created by daoj on 2018/5/17.
//  Copyright © 2018年 LCM. All rights reserved.
//

import UIKit

let dataArr = [String]()
let dataDic = [String:Float]()

var dataList = ["1","2","3"]

var shopDic = [
    "ewe":"2121",
    "vfdv":"12344",
    "kl8ji":"543",
]

protocol ExampleProtocol {
    var simpleDescription: String { get }
    mutating func adjust()
}
extension Int: ExampleProtocol {
    var simpleDescription: String {
        return "The number \(self)"
    }
    mutating func adjust() {
self += 42 }
}

class HomeViewController: BaseViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        
        dataList[1] = "qwer"

        shopDic["000"] = "popgfp"
        
        setSubViews()
        
//     print(teststr("2020-05-16 19:20:34|user.login|name=Charles&location=Beijing&device=iPhone"))
     
    }

    func teststr(_ str:String) -> Dictionary<String, String> {
        
        let str = str
        let arr:[String] = str.components(separatedBy: "|")
        let tempStr:String = arr.last ?? ""
        let arr1:[String] = tempStr.components(separatedBy: "&")
        
        var result = Dictionary<String,String>()
        for valueStr:String in arr1 {
            let arr2:[String] = valueStr.components(separatedBy: "=")
            let keyStr:String = arr2.first ?? " "
            let valueStr:String = arr2.last ?? " "
            if keyStr.count > 0 {
                result[keyStr] = valueStr
            }
        }
        return result
    }
    
    
    func setSubViews()  {
    
        let backview = UIView()
        backview.backgroundColor = UIColor.red

        self.view.addSubview(backview)
        
        backview.snp.makeConstraints { (make) in
            make.left.equalToSuperview().offset(10)
            make.top.equalToSuperview().offset(20 + kNavigationBarHeight)
            make.right.equalToSuperview().offset(-10)
            make.bottom.equalToSuperview().offset(-10-BottomBarHeight)
        }
        backview.lcm_makeRadius(radius: 20)
        
        let tap:UITapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(jumpDetail))
        
        backview.addGestureRecognizer(tap)
        
    }
    
    @objc func jumpDetail() {
                
        let homeDetail:Home_DetailViewController = Home_DetailViewController()
        self.navigationController?.pushViewController(homeDetail, animated: true)
        
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

