//
//  LeeFanxingViewController.swift
//  MySwift
//
//  Created by daoj on 2018/5/31.
//  Copyright © 2018年 LCM. All rights reserved.
//

import UIKit

class LeeFanxingViewController: BaseViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        self.title = "泛型"
        
        let stringArray = ["Hi", "Hello", "Bye"]
        let intArray = [1,2,3]
        let doubleArray = [1.1,2.2,3.3]
        
        
        printEelementFormArray(array: stringArray)
        printEelementFormArray(array: intArray)
        printEelementFormArray(array: doubleArray)

        
        LeeLog(message: didUpdatedsfd(aaa: "dfd"))
        LeeLog(message: fdjfkdj(fdhsjk: "fdfd"))
        
        show(para: 211221)
        show(para: "fdfdgfgfgfgfggf")
        show(para: 2.9090)
        
        
        // Do any additional setup after loading the view.
    }

//    这段代码中的T代表了任意的元素。无论上面类型的数据都能放入其中。之后只要调用者一个方法，传入不同的数组就能将不同类型的元素打印出来。
    
    func didUpdatedsfd(aaa:String) -> String {
        return aaa
    }
    
    func fdjfkdj(fdhsjk aaa:String) -> String {
        return aaa
    }
    
    
    func show<T>(para:T){
        LeeLog(message: para)
    }
    
    
    func printEelementFormArray<T>(array:[T]) {
        for element in array {
            LeeLog(message: element)
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
