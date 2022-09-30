//
//  LeeSingleonViewController.swift
//  MySwift
//
//  Created by LiChuanmin on 2022/6/5.
//  Copyright © 2022 LCM. All rights reserved.
//

import UIKit

class LeeSingleonViewController: BaseViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "单例"
        let singleton = LeeSingleon.shared
        singleton.data = "11"
        
        let newSingleon =  LeeSingleon.shared
        newSingleon.data = "22"
        
        LeeLog(message: singleton.data)
        LeeLog(message: newSingleon.data)

    }
    

   

}
