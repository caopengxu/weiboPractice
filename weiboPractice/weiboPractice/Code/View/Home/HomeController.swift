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
        
    }
    
    @objc private func showMe()
    {
        let vc = UIViewController.init()
        vc.view.backgroundColor = #colorLiteral(red: 1, green: 0.5, blue: 0, alpha: 1)
        
        navigationController?.pushViewController(vc, animated: true)
    }
}



// MARK: - 设置界面
extension HomeController
{
    override func setupUI()
    {
        super.setupUI()
        navigationItem.leftBarButtonItem = UIBarButtonItem(title: "我", style: .plain, target: self, action: #selector(showMe))
    }
}


