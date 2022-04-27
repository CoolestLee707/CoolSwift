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


class HomeViewController: BaseViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        
        dataList[1] = "qwer"

        shopDic["000"] = "popgfp"
        
        setSubViews()
     
    }

    func setSubViews()  {
    
        let backview = UIView()
        backview.backgroundColor = UIColor.red
        backview.lcm_makeRound()

        self.view.addSubview(backview)
        
        backview.snp.makeConstraints { (make) in
            make.left.equalToSuperview().offset(10)
            make.top.equalToSuperview().offset(20 + kNavigationBarHeight)
            make.right.equalToSuperview().offset(-10)
            make.bottom.equalToSuperview().offset(-10-BottomBarHeight)

        }
        
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
