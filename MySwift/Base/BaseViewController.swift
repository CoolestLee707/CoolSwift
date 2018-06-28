//
//  BaseViewController.swift
//  MySwift
//
//  Created by daoj on 2018/5/17.
//  Copyright © 2018年 LCM. All rights reserved.
//

import UIKit

class BaseViewController: UIViewController {


    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = .white
                
//        self.navigationController?.navigationBar.setBackgroundImage(UIImage(named: ""), for: UIBarPosition.top, barMetrics: UIBarMetrics.default)


    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}
