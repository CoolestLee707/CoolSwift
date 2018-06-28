//
//  LeeArrayViewController.swift
//  MySwift
//
//  Created by daoj on 2018/5/29.
//  Copyright © 2018年 LCM. All rights reserved.
//

import UIKit

class LeeArrayViewController: BaseViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        self.title = "数组"

        arrayMethod()
                
    }

    
    func arrayMethod()  {
        
        //定义不可变数组
        //    不可变
        //    let emptyArray = [NSInteger](arrayLiteral: 1,2,3,4,5,6,7,8,9,0)
        //    let emptyArray1 = ["1","2","3"]
        //    let emptyArray2 = ["12","23","34"]
        
        //    可变
        //    var emptyArray2 = ["11","22","33"]
        
        //    var emptyArray = [String]()//创建一个初始化数据为空的数据
        
        //    emptyArray.append("333")
        
        //定义可变数组
//        var arrayM = [String]()
//        var arrayM1:[String]
//        var arrayM2 = Array()
        
        
        //    let emptyDictionary = [String:Float]()
        //
        //    var shopDic = [
        //        "ewe":"2121",
        //        "vfdv":"12344",
        //        "klji":"543",
        //        ]
        
        
        //        LeeLog(message: emptyArray)
        
        //        增加元素
        //        emptyArray2.append("10010")
        //        LeeLog(message: emptyArray2)
        
//        arrayM.insert("10", at: 2)
        //for in
        //        for somess in emptyArray {
        //            LeeLog(message: somess)
        //        }
        
        
        //        遍历数组的下标和值 enumerated 枚举的意思
        //        for (index , item) in emptyArray1.enumerated() {
        //            print("下标\(index) 值为\(item)")
        //        }
        
        
        //        数组合并
        //        let emppp3 = emptyArray1 + emptyArray2
        
        //        删除元素
        //        LeeLog(message: emptyArray2)
        //        emptyArray2.remove(at: 1)
        //        LeeLog(message: emptyArray2)
        
        var arrayM = [String]()
        arrayM.append("1")
        arrayM.append("2")
        arrayM.append("3")
        arrayM.append("4")
        arrayM.append("5")
        
//        arrayM.remove(at: 0)
//        arrayM.removeSubrange(1..<3)
//        arrayM.removeAll()
//        arrayM.removeLast() //可以去除最后一项，避免捕获数组count属性
        
        for i in 0..<arrayM.count {
            LeeLog(message: arrayM[i])
        }
        LeeLog(message: arrayM)

        //替换第2项到第4项的值
//        arrayM[2...4] = ["22","33"]
        
//        LeeLog(message: arrayM)
        
        //        判断空
        //        if emptyArray2.isEmpty {
        //            LeeLog(message: "空的")
        //        }
        
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
