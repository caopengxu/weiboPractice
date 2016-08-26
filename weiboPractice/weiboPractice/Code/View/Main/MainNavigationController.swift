//
//  MainNavigationController.swift
//  weiboPractice
//
//  Created by 曹鹏旭 on 16/8/12.
//  Copyright © 2016年 cpx. All rights reserved.
//

import UIKit

class MainNavigationController: UINavigationController {

    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    override func pushViewController(_ viewController: UIViewController, animated: Bool) {
        
        if childViewControllers.count > 0
        {
            viewController.hidesBottomBarWhenPushed = true
        }
        
        super.pushViewController(viewController, animated: true)
    }
}
