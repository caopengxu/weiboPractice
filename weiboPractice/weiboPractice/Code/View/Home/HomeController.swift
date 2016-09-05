//
//  HomeController.swift
//  weiboPractice
//
//  Created by 曹鹏旭 on 16/8/12.
//  Copyright © 2016年 cpx. All rights reserved.
//

import UIKit

class HomeController: BaseController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.title = "首页"
    }
    
    @objc private func showMe()
    {
        let vc = BaseController.init()
        vc.view.backgroundColor = #colorLiteral(red: 1, green: 0.5, blue: 0, alpha: 1)
        
        navigationController?.pushViewController(vc, animated: true)
    }
}



// MARK: - 设置界面
extension HomeController
{
    /// 设置父类方法
    override func setupUI()
    {
        super.setupUI()
        
        navItem.leftBarButtonItem = UIBarButtonItem(title: "我", fontSize: 16, target: self, action: #selector(showMe))
    }
}


