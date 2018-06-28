//
//  MineViewController.swift
//  MySwift
//
//  Created by daoj on 2018/5/17.
//  Copyright © 2018年 LCM. All rights reserved.
//

import UIKit
import LTMorphingLabel
import CLImagePickerTool
import Photos

class MineViewController: BaseViewController {

    let imagePickTool = CLImagePickersTool()

    override func viewDidLoad() {
        super.viewDidLoad()

        //MARK:--隐藏导航栏
        self.fd_prefersNavigationBarHidden = true
        
        setSubViews()
        // Do any additional setup after loading the view.
    }

    func setSubViews()  {
        
        let view = UIView(frame: CGRect(x: 10, y: kNavigationBarHeight+20, width: 50, height: 50))
        view.backgroundColor = UIColor.red
        self.view.addSubview(view)
        
        view.lcm_makeRound()
        
//        view.width = 100
//        LeeLog(message: view.height)
        
        view.isUserInteractionEnabled = true
        
        let tap = UITapGestureRecognizer(target: self, action: #selector(tapClick))
        
        view.addGestureRecognizer(tap)
        
        
        
        let titleLabel = UILabel()
            
        titleLabel.backgroundColor = UIColor.red
        titleLabel.text = "相册1"
        titleLabel.textColor = UIColor.blue
        self.view.addSubview(titleLabel)
        
        titleLabel.snp.makeConstraints({ (make) in
            make.left.equalToSuperview().offset(10)
            make.top.equalToSuperview().offset(200)
            make.width.height.equalTo(50)
        })
        
        titleLabel.lcm_makeRadius(radius:5)
        titleLabel.isUserInteractionEnabled = true
        let photoTap = UITapGestureRecognizer(target: self, action: #selector(photoTapClick))
        
        titleLabel.addGestureRecognizer(photoTap)
        
        let textField = UITextField()
        textField.backgroundColor = UIColor.yellow
        self.view.addSubview(textField)
        
        textField.snp.makeConstraints { (make) in
            make.left.equalToSuperview().offset(20)
            make.top.equalToSuperview().offset(500)
            make.width.equalTo(80)
            make.height.equalTo(40)
        }
        
        let label:LTMorphingLabel = LTMorphingLabel(frame: CGRect(x: 20, y: 300, width: 100, height: 50))
        label.font = UIFont.systemFont(ofSize: 30)
        self.view.addSubview(label)
        label.morphingEffect = .burn
        label.text = "Swift"
        
    }
    
    @objc func tapClick()  {
        LeeLog(message: "点击")
        
        let vc = LeeMineDetailViewController()
        vc.text = "属性传值"
        vc.titleLabel.text = "简单可返回的"
        self.navigationController?.pushViewController(vc, animated: true)
        
//        alertShowInfo(info: "哈哈")
        
//        MBProgressHUD.showWait("加载中")
        
//        MBProgressHUD.show()

    }
    
    //MARK:- 访问相册
    @objc func photoTapClick()  {
        
        LeeLog(message: "相册")
        
        // superVC 当前的控制器 MaxImagesCount最多选择的照片数量
        imagePickTool.setupImagePickerWith(MaxImagesCount: 6, superVC: self) { (asset,cutImage) in
            print("返回的asset数组是\(asset)")
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
