//
//  LeeFunctionViewController.swift
//  MySwift
//
//  Created by daoj on 2018/5/29.
//  Copyright © 2018年 LCM. All rights reserved.
//

import UIKit

class LeeFunctionViewController: BaseViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        self.title = "函数调用"
        
//        let sumadd = sum(number1: 10, number1: 20)
//        LeeLog(message: sumadd)
        
//        默认参数
//        LeeLog(message: makeIceCream())
//        LeeLog(message: makeIceCream(flavor: "抹茶"))
        
//        可变参数
//        有些时候，在创建方法的时候，并不确定参数的个数，于是swift推出了可变参数。参数的类型之后使用...表示多个参数。
        
        let addsum = sum(num: 2,3,4,5,6)
        LeeLog(message: addsum)
        

    }

    func sum(number1 num1:Int,number1 num2:Int) -> Int {
        return num1 + num2
    }
    
    func makeIceCream(flavor:String = "原味") -> String {
        return "制作一个\(flavor)冰淇淋"
    }
    
    func sum(num:Int...) -> Int {
        var result = 0
        for i in num {
            result += i
        }
        return result
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
