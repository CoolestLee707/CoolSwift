//
//  LeeSetViewController.swift
//  MySwift
//
//  Created by daoj on 2018/5/29.
//  Copyright © 2018年 LCM. All rights reserved.
//

import UIKit

class LeeSetViewController: BaseViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        self.title = "集合"
//        集合(Set)用来存储相同类型并且没有确定顺序的值，当集合元素顺序不重要时或者希望确保每个元素只出现一次时可以使用集合而不是数组。

        //创建空集合
        var letters = Set<String>()
        //使用字面量创建集合
        var favorite:Set = ["bsda","fdkl"]
        
        favorite.insert("bkjlkjl")
        LeeLog(message: favorite.count)
        
//       2、访问和修改集合
//        通过.count属性知道集合的长度，通过isEmpty判断集合是否为空。
        
//        3、添加元素
        letters.insert("bkjlkjl")
        
//        4、删除元素
//        通过remove的方法删除元素，若这个值真的存在就会删除改值，并且返回被删除的元素。若集合中不包含这个值，就会返回nil。
        if let removeBack = favorite.remove("意琦行2"){
            LeeLog(message: removeBack)
        }else{
            LeeLog(message: "没有找到值")
        }
        
//        5、集合操作
//        swift提供了许多数学方法来操作集合
//        print(oddD.union(evenD).sorted()) //并集
//        print(oddD.intersection(evenD).sorted())//交集
//        print(oddD.subtracting(siggleDPrime).sorted())//取差值
//        print(oddD.symmetricDifference(siggleDPrime).sorted())//去掉相同值
 
//        6、遍历集合
//        for item in favorite {
//            print(item)
//        }
        //按照首字母的顺序输出
        for item1 in favorite.sorted() {
            LeeLog(message: item1)
        }
        
        LeeLog(message: letters)
        
        
        
//        7、集合的成员关系
//
//        用 ==来判断两个集合是否包含全部相同的值
//
//        用 isSubset(of:)来判断一个集合中的值是否也被包含在另外一个集合中
//
//        用 isSuperset（of:）来判断一个集合中包含另一个集合所有的值
//
//        用isStrictSubset(of:)或者isStrictSuperset(of:)方法来判断一个集合是否是另外一个集合的子集合或父集合并且两个集合不相等
        
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
