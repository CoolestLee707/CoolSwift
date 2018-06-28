//
//  LeeFirstView.swift
//  MySwift
//
//  Created by daoj on 2018/5/29.
//  Copyright © 2018年 LCM. All rights reserved.
//

import UIKit

let LeeViewWidth :CGFloat = 30.0

@objc protocol leeFirstdelegate : NSObjectProtocol {

    func mustfunction()  //必须方法

    @objc optional func mayfunction()  //可选方法
}

@objc protocol leeSecondDelegate {
    
    func mustMethod()  //必须方法
    @objc optional func mayMethod()  //必须方法
}

class LeeFirstView: UIView {

    weak var firstdelegate : leeFirstdelegate?
    weak var seconddelegate : leeSecondDelegate?

    var headImageView : UIImageView?
    var nameLabel:UILabel?

    //    override init(){
    //        super.init()
    //        setupSubViews()
    //    }
    
    override init(frame:CGRect) {
        
        super.init(frame: frame)
        
        setupSubViews()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setupSubViews()  {
        
        headImageView = UIImageView(frame: CGRect(x: 10, y: 10, width: LeeViewWidth, height: LeeViewWidth))
        headImageView?.isUserInteractionEnabled = true
        headImageView?.image = UIImage(named: "Tabbar_Find_selected")
        self.addSubview(headImageView!)
        
        let tap:UITapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(tapClick))
        
        headImageView?.addGestureRecognizer(tap)
        
        nameLabel = UILabel()
        self.addSubview(nameLabel!)
        nameLabel?.text = "都是接口发送到"
        nameLabel?.backgroundColor = UIColor.yellow
        nameLabel?.textAlignment = .center
        nameLabel?.isUserInteractionEnabled = true
        
        let tap1:UITapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(tapClick1))
        nameLabel?.addGestureRecognizer(tap1)
        
        headImageView?.addGestureRecognizer(tap)
        
        nameLabel?.snp.makeConstraints({ (make) in
            make.left.equalToSuperview().offset(5)
            make.right.equalToSuperview().offset(-5)
            make.bottom.equalToSuperview()
            make.height.equalTo(LeeViewWidth)
        })
        
    }
    
    @objc func tapClick()  {
        if let delegateOK = self.firstdelegate {
            delegateOK.mustfunction()
            delegateOK.mayfunction!()
            
        }
    }
    
    @objc func tapClick1()  {
        if let delegateOK = self.seconddelegate {
            delegateOK.mustMethod()
            delegateOK.mayMethod!()
        }
    }
    
}
