//
//  LeeBiBaoViewController.swift
//  MySwift
//
//  Created by daoj on 2018/5/30.
//  Copyright © 2018年 LCM. All rights reserved.
//

//闭包是swift中非常重要的一个知识点。类似于objective-c中的block，其实函数就相当于一个特殊的闭包。闭包需要提前写好，在适当的时候再执行。
//在swift中是不需要引入头文件的，文件之间可共享

import UIKit

class LeeBiBaoViewController: BaseViewController {

//    1、定义闭包
//    闭包的格式是(参数列表)->(返回值类型) in 实现代码
    
    let b1 = {
        LeeLog(message: "这是闭包1")
    }
    let b3 = {
        (age:String) -> () in LeeLog(message: age)
    }
    
    
    var tools : LeeHttpTool = LeeHttpTool()
    
    
    //定义数组，里面的元素都是闭包类型的
    var callBackArray : [()->Void] = []
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.title = "闭包"
//       method1()
        
//         httpToolMethod()
        
//        3、尾随闭包
//        尾随闭包用于需要将一个很长的闭包表达式作为最后一个参数传递给函数。也就是说如果按时的最后一个参数是闭包，那么在调用它的时候就可以把这个闭包写在括号外面，并紧跟括号，函数的其他参数则仍然写在括号之中。
        //普通调用
//        myFunc(strP: "hello", closeP: {(String) in LeeLog(message: String)})
        
        //尾随闭包
//        myFunc(strP: "world") { (string) in
//            LeeLog(message: string)
//        }
        
        
//        4、逃逸闭包
//        当一个闭包作为参数传到一个函数中，但是该闭包要在函数返回之后才被执行，于是就称这样的闭包为逃逸闭包。也就是说闭包逃离了函数的作用域。写法是在这个闭包参数前加一个@escaping用来指明这个闭包是允许逃逸出该函数的。
        
       
//        weak var weakself = self
        
    }
    
    
    
    func testEscapingClosure(callBack : @escaping() -> Void)  {
        callBackArray.append(callBack)
    }
    
    

    func myFunc(strP:String,closeP:(String) -> Void)  {
        closeP(strP)
    }
    
    
    
//    2、闭包案例
    func httpToolMethod() {
        
        tools.loadData { (jsonData) in
            LeeLog(message: "在viewcontroller中拿到数据\(jsonData)")
        }
    }
    
    
    
    func method1() {
        
        let b2 = {
            LeeLog(message: "这是闭包2")
        }
        
        b1()
        b2()
        b3("是否合适")
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
