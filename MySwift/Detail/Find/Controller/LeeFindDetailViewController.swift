//
//  LeeFindDetailViewController.swift
//  MySwift
//
//  Created by daoj on 2018/5/29.
//  Copyright © 2018年 LCM. All rights reserved.
//

import UIKit

class LeeFindDetailViewController: BaseViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        self.title = "基本函数"
        
//        在swift中没有非0即真的说法，所以不能写成if(num)这样的格式。
        
        
//        method1()
        
//        guardMethod(age: 20)
        
//        switchMethod(sex: 40)
        
//        forMethod()
        


        
        
    }

    
    //MARK:- 三目运算符
    func method1()  {
        
        let x = 10
        x > 5 ? print("小仙女"):print("妖精")
        
        
//        如果开发者只想处理条件成立的部分，此时可以在冒号后面用一个小括号来代替条件不成立的部分。
        x > 5 ? print("你都写了我两次啦"):()
        
//        三目运算符的简单模式通常是用于处理可选项的。“？？”的意思是说，如果表达式有值，就使用那个值，如果没有，就使用“??”后面的值来代替
        
        let a:Int? = nil
        let b:Int? = 9
        print((a ?? 0) + (b ?? 0))
        
        
        let name:String? = "安琪拉"
        print((name ?? "") + "火烧屁屁咯")
        print(name ?? "" + "火烧屁屁咯")
        
//      从运行的结果可以看到，“？？”的优先级是最低的。如果没有小括号的约束，它会将后面的语句都当成是一个表达式。
    }
    
    //MARK:- guard
    func guardMethod(age:Int)  {
        
//        分支若是写得过多，就会导致代码可读性较差的问题。为了降低代码的层次，swift推出了guard。guard后面跟判断表达式，else后面写表达式不成立的代码
        
        guard age >= 18 else {
            print("还未成年呢")
            return
        }
        
        print("一起来开黑吖")
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
//    MARK:- switch
//    switch后面的小括号可以省略。用case关键字来表示不同的情形，case语句结束后，break也可以省略。
    func switchMethod(sex:Int)  {
        
        switch sex {
        case 0:
            print("男")
            
        case 1:
            print("女")
        default:
            print("其他")
        }
        
        
//        case后面可以判断多个条件，这些条件以逗号分开
        
        switch sex {
        case 0,1:
            print("正常人")
        default:
            print("其他")
        }
      
        //测试git
//        在swift的switch中，case后面加了fallthrough的用法，就和OC的case后面没加break的用法是一样的！加了fallthrough后，会直接运行【紧跟的后一个】case或default语句，不论条件是否满足都会执行，执行完fallthrough后直接跳到下一个条件语句，本条件执行语句后面的语句不执行
        switch sex {
          
        case 0...10:
            print("小朋友")
            fallthrough
        case 11...20:
            print("大朋友")
        case let x:
            print("\(x)岁的朋友")
        }
       
        //输出结果：
//        小朋友
//        大朋友
        
        //        let age = 10
        //        switch age {
        //        case 0...10:
        //            print("小朋友")
        //            fallthrough
        //        case 11...20:
        //            print("中朋友")
        //            fallthrough
        //        case 21...30:
        //            print("大朋友")
        //        case let x:
        //            print("\(x)岁的朋友")
        //        }
        
//        加了fallthrough语句后，【紧跟的后一个】case条件不能定义常量和变量
        switch sex {
        case 0...10:
            print("小朋友")
//        fallthrough //此处报错
        case let x:
            print("\(x)岁的朋友")
        }
        
//    switch可以判断浮点型、字符串类型和Bool类型
        
    }
    
    //MARK:for
//    swift常见区间有两种，开区间用..<表示，闭区间用...表示。要注意的是数字和省略号之间是不能加空格的
    func forMethod()  {
        
        for i in 0..<10 {
            LeeLog(message: i)
        }
        LeeLog(message: "--------")
        
        for i in 0...5 {
            LeeLog(message: i)
        }
        LeeLog(message: "--------")

//        如果想要做逆序操作，只要在in后面的表达式后添加reversed()即可。
        
        for i in (0..<5).reversed() {
            LeeLog(message: i)
        }
    }
 

//    已知有很多会议,如果这些会议时间相互重叠,则将他们合并。
    
//    func mergeMeetings(_ meetings: [[Int]]) -> [[Int]] {
//
//        guard meetings.count > 1 else {
//            return meetings
    
//        }
//
//        var times = meetings.sorted { (num1:Int,num2:Int) -> Bool in
//
//            if num1.start != num2.start {
//                return num1.start < num2.start
//            }else{
//                return num1.end < num2.end
//            }
//        }
//        var res = [[Int]]()
//        res.append(times[0])
//
//        for i in 1..<times.count {
//            let temp = res[res.count - 1]
//            let current = times[i]
//            if current.start > temp.end {
//                res.append(current)
//            }else {
//                temp.end = max(temp.end , current.end)
//            }
//        }
//        return res
//    }
    
}



