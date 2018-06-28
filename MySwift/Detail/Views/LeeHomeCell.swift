//
//  LeeHomeCell.swift
//  MySwift
//
//  Created by daoj on 2018/5/18.
//  Copyright © 2018年 LCM. All rights reserved.
//

import UIKit

class LeeHomeCell: UITableViewCell {

    lazy var bgView = UIView()

    var leftLabel:UILabel?
    
    var titleLabel:UILabel?
    var picImgView:UIImageView?
    
    
    override init(style: UITableViewCellStyle, reuseIdentifier: String?) {
        
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        self.selectionStyle = .none
        self.setUpUI()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setUpUI()  {
        
        self.bgView = UIView.init()
        self.bgView.backgroundColor = UIColor.white
        self.contentView.addSubview(self.bgView)
        
        self.bgView.snp.makeConstraints { (make) in
            make.left.top.width.height.equalToSuperview()
        }
        
        
        self.titleLabel = UILabel.init()
        self.titleLabel?.backgroundColor = UIColor.white
        self.titleLabel?.textColor = UIColor.black
        self.bgView.addSubview(self.titleLabel!)
        
        self.titleLabel?.snp.makeConstraints({ (make) in
            make.left.equalToSuperview().offset(10)
            make.right.equalToSuperview().offset(-10)
            make.top.equalToSuperview()
            make.height.equalTo(20)
        })
                
        
    }
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
