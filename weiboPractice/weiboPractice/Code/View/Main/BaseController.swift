//
//  BaseController.swift
//  weiboPractice
//
//  Created by 曹鹏旭 on 16/8/12.
//  Copyright © 2016年 cpx. All rights reserved.
//

import UIKit

class BaseController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        setupUI()
    }
}



// MARK: - 设置界面
extension BaseController
{
    func setupUI()
    {
        view.backgroundColor = #colorLiteral(red: 0.2856909931, green: 0, blue: 0.9589199424, alpha: 1)
    }
}
