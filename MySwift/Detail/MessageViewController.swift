//
//  MessageViewController.swift
//  MySwift
//
//  Created by daoj on 2018/5/17.
//  Copyright © 2018年 LCM. All rights reserved.
//

import UIKit
import MJRefresh

class MessageViewController: BaseViewController {

    lazy var mainTableView : UITableView = UITableView()
    let dsdsd = UIView()
    
    let identifier : String = "identifier"
    let myData = NSMutableArray(objects: "1","2","3","4","5","6","7","8","9","10","11","12","13")
    
    //    var myData = ["1","2","3","4","5","6","7","8","9","10","11","12","13"]

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
//        self.navigationController?.setNavigationBarHidden(true, animated: animated)
    }
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
//        self.navigationController?.setNavigationBarHidden(false, animated: animated)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        setupUI()
                
        self.mainTableView.mj_header = MJRefreshNormalHeader(refreshingTarget: self, refreshingAction: #selector(refreshData))
        
//        底部有点击上拉文字
//        self.mainTableView.mj_footer = MJRefreshAutoNormalFooter(refreshingTarget: self, refreshingAction: #selector(loadMore))
        
        //底部没有点击上拉文字
        self.mainTableView.mj_footer = MJRefreshBackNormalFooter(refreshingTarget: self, refreshingAction: #selector(loadMore))
    }

    @objc func refreshData()   {
        LeeLog(message: "刷新")
        self.mainTableView.mj_header.endRefreshing()
    }
    
    @objc func loadMore()  {
        
        LeeLog(message: "加载更多")
        self.mainTableView.mj_footer.endRefreshing()
        
        //提示已经全部加载完毕不再执行loadMore
//        self.mainTableView.mj_footer.endRefreshingWithNoMoreData()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}


extension MessageViewController {
    
    private func setupUI() {
        
        mainTableView = UITableView.init(frame: view.bounds, style: UITableViewStyle.grouped)
        self.view.addSubview(mainTableView)
        mainTableView.delegate = self
        mainTableView.dataSource = self
        mainTableView.separatorStyle = .singleLine
//        mainTableView.isEditing = true
        
        mainTableView.snp.makeConstraints { (make) in
            make.left.right.equalToSuperview()
            make.top.equalToSuperview().offset(kNavigationBarHeight)
            make.bottom.equalToSuperview().offset(-BottomBarHeight)
        }
//      系统创建的cell不用注册,xib和自定义cell创建的cell必须注册
        mainTableView.register(LeeHomeCell.classForCoder(), forCellReuseIdentifier: identifier)
        
        if #available(iOS 11.0, *) {
            mainTableView.contentInsetAdjustmentBehavior = .never
        }else {
            self.automaticallyAdjustsScrollViewInsets = false
        }
    }
}

//MARK:tableView的数据源和代理的扩展
extension MessageViewController:UITableViewDelegate,UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return myData.count
    }
    
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return CGFloat.leastNormalMagnitude
    }
    func tableView(_ tableView: UITableView, heightForFooterInSection section: Int) -> CGFloat {
        return CGFloat.leastNormalMagnitude
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 80
    }
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let view = UIView()
        return view
    }
    func tableView(_ tableView: UITableView, viewForFooterInSection section: Int) -> UIView? {
        let view = UIView()
        return view
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        var cell:LeeHomeCell! = tableView.dequeueReusableCell(withIdentifier: identifier) as! LeeHomeCell
        
        if cell == nil {
            cell = LeeHomeCell(style: .default, reuseIdentifier: identifier)
        }
        
        cell.titleLabel?.text = "\(myData.object(at: indexPath.row))"
        return cell!
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        

        let vc = LeeDetailViewController()
        
        self.navigationController?.pushViewController(vc, animated: true)
        
        print("\(indexPath.row)")
    }
    
    func tableView(_ tableView: UITableView, didDeselectRowAt indexPath: IndexPath) {
        
    }
    
    func tableView(_ tableView: UITableView, editingStyleForRowAt indexPath: IndexPath) -> UITableViewCellEditingStyle {
        return .none
    }
    
    func tableView(_ tableView: UITableView, moveRowAt sourceIndexPath: IndexPath, to destinationIndexPath: IndexPath) {
        let fromRow = sourceIndexPath.row
        let toRow = destinationIndexPath.row
        
        
        LeeLog(message: "\(fromRow) -- \(toRow)")
        
        let fromData = myData.object(at: fromRow)
        
        myData.removeObject(at: fromRow)
        myData.insert(fromData, at: toRow)
     
        LeeLog(message: myData)
    }
    
}
