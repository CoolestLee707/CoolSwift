//
//  LeeDictionaryViewController.swift
//  MySwift
//
//  Created by daoj on 2018/5/29.
//  Copyright © 2018年 LCM. All rights reserved.
//

import UIKit

class LeeDictionaryViewController: BaseViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        self.title = "字典"

//        1、定义字典
        let dict = [1:"one",2:"two",3:"three"]  //定义不可变字典[key:value,key:value]
        var dictM = Dictionary<String,Int>()//定义可变字典Dictionary<key,value>()
        var dictM1 = [String:NSObject]()

        //AnyObject一般用于指定类型，NSObject一般用于创建对象
        
        
//        2、对可变字典做基本操作
        dictM1["name"] = "小仙女" as NSObject
        dictM["age"] = 17
        dictM["name"] = 173232

        LeeLog(message: dictM)
        LeeLog(message: dictM1)

        dictM.removeValue(forKey:"name")
        //获取：swift中只保留了最简单的写法，OC中有objectforkey的方法在swift中也被删除掉了。
//        dictM["name"]
        
        LeeLog(message: dict)
        LeeLog(message: dictM)
        
        let ssss = dict[1]
        LeeLog(message: ssss)
        
//        dicMethod()

    }

    func dicMethod()  {
        
        //        不可变
        //        let someDict1 : [String:String]=["1":"2222","2":"44444"]
        
        
        //        可变
        //        var dict1:Dictionary<Int,String> = [:]//其中键是Int型  值是String型
        //        var dict2:[String:String] = [:]//其中键、值都是String型
        
        //        var dict3 = [String:String]()
        //        var dict4 = Dictionary<String,String>()
        
        //        var dict = ["name":"sunfusheng", "age":20, "blog":"sunfusheng.com"] as [String : Any]
        
        //        var shopDic = [
        //            1:"2121",
        //            2:"12344",
        //            3:"543",
        //            ]
        
        
        //访问value
        //        let sosm = someDict1["1"]
        //        LeeLog(message: sosm)
        
        //        增、改 有则更新键值对的值，无则增加一个键值对
        //        dict1[2] = "40"
        //        dict1["height"] = 60
        
        
        //        updateValue: 有则更新键值对的值，无则增加一个键值对，如果字典里含有updateValue的Key那就返回老大值，否则返回nil（nil在Swift中，nil不是指针，它是一个确定的值，用于表示值缺失。任何类型的可选状态都可以设置为nil，不只是对象类型）
        //       let backValue = dict3.updateValue("sina", forKey: "weiBo")
        //
        //        LeeLog(message: backValue)
        //        LeeLog(message: dict3)
        //
        //        let backValue1 = dict3.updateValue("sina11", forKey: "weiBo")
        //        LeeLog(message: backValue1)
        //        LeeLog(message: dict3)
        
        //查
        /**
         这里的：！强制对Optional值进行拆包
         在Swift中，！和 ？都是拆包但他两的使用场景不一样
         ！的使用场景：
         1）强制对Optional值进行拆包
         2）声明隐式拆包变量，一般用于类中的属性
         
         ？的使用场景：
         1）声明Optional值变量
         2）在对Optional值操作中，用来判断是否能响应后面的操作
         */
        
        //        var dict = ["name":"sunfusheng", "age":20, "blog":"sunfusheng.com"] as [String : Any]
        //
        //        let age:Any = dict["age"] as! Int
        //
        //        LeeLog(message: age)
        
        
        //        删
        
        //        var dict = ["name":"sunfusheng", "age":20, "blog":"sunfusheng.com"] as [String : Any]
        //        dict["age"] = nil
        //        LeeLog(message: dict)
        
        
        //        var dict = ["name":"sunfusheng", "age":20, "blog":"sunfusheng.com"] as [String : Any]
        //
        //        let removeValure = dict.removeValue(forKey: "name")
        //
        //        LeeLog(message: "dict = \(dict) \n removeValure = \(String(describing: removeValure))")
        
        //        （3）removeAll() 清空字典的所有键值对
        //        dict.removeAll()
        
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
