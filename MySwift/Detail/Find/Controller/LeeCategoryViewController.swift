//
//  LeeCategoryViewController.swift
//  MySwift
//
//  Created by daoj on 2018/5/29.
//  Copyright © 2018年 LCM. All rights reserved.
//

import UIKit

class LeeCategoryViewController: BaseViewController {

    
    override func viewDidLoad() {
        super.viewDidLoad()

        let person = LeeFirstModel(name: "mmm", age: 109)
        person.age = 100
//        person.name = "京东方是否"
        
//        LeeLog(message: String(person.age) + person.name!)
//
//        LeeLog(message: "\(person.age)" + person.name!)
        
        LeeLog(message: "\(person.age)" + (person.name ?? "wqwqw"))
        
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
