//
//  Home_DetailViewController.swift
//  MySwift
//
//  Created by LiChuanmin on 2022/9/24.
//  Copyright © 2022 LCM. All rights reserved.
//

import UIKit

class Home_DetailViewController: BaseViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        self.title = "HomeDetails"
        
//        testCopyOnWrite()
        
//        testStruct()
        

       

    }
    
    func testStruct() {
        struct Point {
           var x, y: Double
        }
        let point1 = Point(x: 0, y: 0)
        var point2 = point1
        point2.x = 5
        
        print(point1)
        print(point2)
    }

    func testCopyOnWrite() {
        
        let a = "a test string of a hehhe 1"
        let b = a
//        值传递
//        [Home_DetailViewController.swift:line:20]- 0x6000032fda40
//        [Home_DetailViewController.swift:line:21]- 0x6000032fcc60
        LeeLog(message: String.init(format: "%p", a))
        LeeLog(message: String.init(format: "%p", b))
        
        
        var aArray = [1,2,3]
        let bArray = aArray

        
//        123
//        123
        LeeLog(message: String.init(format: "%@", aArray))
        LeeLog(message: String.init(format: "%@", bArray))
       
        
    
        aArray = [4,5,6]
        
//        456
//        123
        LeeLog(message: String.init(format: "%@", aArray))
        LeeLog(message: String.init(format: "%@", bArray))
    }
    
    
//    dealloc
    deinit {
        LeeLog(message: "deinit")
    }

}
