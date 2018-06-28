//
//  LeeEnumViewController.swift
//  MySwift
//
//  Created by daoj on 2018/5/30.
//  Copyright © 2018年 LCM. All rights reserved.
//
//上面这个枚举定义的东南西北四个值就是这个枚举的成员值。与C语言和objective-c不同的是，swift的枚举成员值在创建的时候并不会被赋予一个默认的整形值。这些值的类型就是刚刚定义好的枚举的名字SomeEnum。

import UIKit

class LeeEnumViewController: BaseViewController {

    enum SomeEnum {
        // 在这里定义枚举
        case north
        case south
        case east
        case west
    }
    var directionT = SomeEnum.east

//    如果希望多个成员值要写在同一行中，可以使用逗号将他们分割开
    enum Plant {
        case mercury,earth,mars
    }
    
    
//    2、关联值
//    可以定义swift的枚举类存储任意类型的关联值，而且每个枚举成员的关联值类型都可以不相同。比如说，来创建一个条形码类型。类似于库存，可以有不同类型的条形码去识别商品，比如说通过数字，或者根据产品代码来识别
    enum BarCode {
        case upc(Int,Int,Int,String)
        case qrCode(String)
    }
    
    
    //    4、枚举递归
    //    枚举成员的关联值为当前枚举类型时称为递归枚举。那我们可以通过使用indirect修饰枚举变量。indirect修饰整个枚举时,所有成员均可递归(也可不递归)
    /*
     indirect enum Ari {
     case number(Int)
     case addition(Ari,Ari)
     case multi(Ari,Ari)
     }
     
     let five = Ari.number(5)
     let four  = Ari.number(4)
     let sum = Ari.addition(five, four)
     let product = Ari.multi(sum, Ari.number(2))
     
     通过枚举递归，就成功的创建了一个（5+4）*2的式子。
     */
    indirect enum Ari {
        case number(Int)
        case addition(Ari,Ari)
        case multi(Ari,Ari)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.title = "枚举"
        
       method3()
    }

    func method1()  {
        
        directionT = .north
        
        switch directionT {
        case .east:
            LeeLog(message: "east")
        case .north:
            LeeLog(message: "north")
        case .south:
            LeeLog(message: "south")
        default:
            LeeLog(message: "west")
        }
        
    }
    
    
    func method2() {
        
        var pBar = BarCode.upc(8, 9, 0, "qwq")
        pBar = .qrCode("zxcv")
        
        LeeLog(message: pBar)
        
    }
    
    func method3() {
        
        let five = Ari.number(5)
        let four  = Ari.number(4)
        let sum = Ari.addition(five, four)
        let product = Ari.multi(sum, Ari.number(2))
        LeeLog(message: product)
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
