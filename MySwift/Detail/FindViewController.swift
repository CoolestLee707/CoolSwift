//
//  FindViewController.swift
//  MySwift
//
//  Created by daoj on 2018/5/17.
//  Copyright © 2018年 LCM. All rights reserved.
//

import UIKit
//let apples = 3
//let oranges = 8
//let lcmsasa = """
//I djs djls jldslj \(apples) apples
//sjjkl \(oranges) dosiudo
//vfdfd dfdfd
//"""
class FindViewController: BaseViewController,UITableViewDelegate,UITableViewDataSource {
    
    lazy var mainTableView : UITableView = UITableView()
    let identifier : String = "identifier"

    let myData = NSMutableArray(objects: "数组","字典","集合","基本函数","函数与元祖","函数调用","类","闭包","懒加载","枚举","泛型","代理","13")

    override func viewDidLoad() {
        super.viewDidLoad()
    
        //MARK:禁用全局右滑返回手势 self.navigationController?.fd_fullscreenPopGestureRecognizer.isEnabled = false

        setupUI()

        // Do any additional setup after loading the view.
    }
    
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
            make.bottom.equalToSuperview().offset(-BottomEmptyHeight)
        }
    }
    
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
        
        var cell = tableView.dequeueReusableCell(withIdentifier: identifier)
        
        if cell == nil {
            cell = UITableViewCell(style: .default, reuseIdentifier: identifier)
            cell?.selectionStyle = .none
        }
        cell?.textLabel?.text = (myData[indexPath.row] as? String)
        
        return cell!
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        
        switch indexPath.row {
        case 0:
            let vc = LeeArrayViewController()
            self.navigationController?.pushViewController(vc, animated: true)
        case 1:
            let vc = LeeDictionaryViewController()
            self.navigationController?.pushViewController(vc, animated: true)
        case 2:
            let vc = LeeSetViewController()
            self.navigationController?.pushViewController(vc, animated: true)
        case 3:
            let vc = LeeFindDetailViewController()
            self.navigationController?.pushViewController(vc, animated: true)
        case 4:
            let vc = LeeDetailViewController()
            self.navigationController?.pushViewController(vc, animated: true)
        case 5:
            let vc = LeeFunctionViewController()
            self.navigationController?.pushViewController(vc, animated: true)
        case 6:
            let vc = LeeCategoryViewController()
            self.navigationController?.pushViewController(vc, animated: true)
        case 7:
            let vc = LeeBiBaoViewController()
            self.navigationController?.pushViewController(vc, animated: true)
        case 8:
            let vc = LeeLazyViewController()
            self.navigationController?.pushViewController(vc, animated: true)
        case 9:
            let vc = LeeEnumViewController()
            vc.directionT = .west
            self.navigationController?.pushViewController(vc, animated: true)
        case 10:
            let vc = LeeFanxingViewController()
            self.navigationController?.pushViewController(vc, animated: true)
        case 11:
            let vc = LeeDelegateViewController()
            navigationController?.pushViewController(vc, animated: true)
        default:
            LeeLog(message: "。。。")

        }
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        let vc = LeeFindDetailViewController()
        self.navigationController?.pushViewController(vc, animated: true)

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
