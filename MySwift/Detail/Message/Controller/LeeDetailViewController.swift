//
//  LeeDetailViewController.swift
//  MySwift
//
//  Created by daoj on 2018/5/18.
//  Copyright © 2018年 LCM. All rights reserved.
//

import UIKit

class LeeDetailViewController: BaseViewController {

//    元组是swift中特有的一种数据结构，用于定义一组数据，元组在数学中的应用十分广泛。
//    使用（）包含信息，组成元组类型的数据可以被称为“元素”
    override func viewDidLoad() {
        super.viewDidLoad()

        self.view.backgroundColor = UIColor.lightGray
        
        self.title = "函数与元祖"
        
        let staistics = calculateStatistics(scores: [4,5,3,2,5,6,3,13])
        
        LeeLog(message: staistics.min)
        LeeLog(message: staistics.max)
        LeeLog(message: staistics.sum)
        LeeLog(message: staistics.lodstr)

        // Do any additional setup after loading the view.
    }

//    函数与元祖, 使用一个元组来创建一个复合值 - 例如，从一个函数返回多个值。元组的元素可以通过名字或数字来引用
    func calculateStatistics(scores:[Int]) -> (min:Int,max:Int,sum:Int,lodstr:String) {
        
        var min = scores[0]
        var max = scores[0]
        var sum = 0

        
        for score in scores {
            if score > max  {
                max = score
            }
                
            if score < min {
                min = score
            }
            
            sum += score
        }
        
        return(min,max,sum,"哈哈哈")
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
