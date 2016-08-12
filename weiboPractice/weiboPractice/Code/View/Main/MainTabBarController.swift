
//
//  MainTabBarController.swift
//  weiboPractice
//
//  Created by 曹鹏旭 on 16/8/12.
//  Copyright © 2016年 cpx. All rights reserved.
//

import UIKit

class MainTabBarController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()

        setupChildControllers()
    }

}



extension MainTabBarController{
    
    private func setupChildControllers() {
        
        let array = [
            ["clsName":"Home", "title":"首页", "imageName":""],
            ["clsName":"Message", "title":"消息", "imageName":""],
            ["clsName":"Discover", "title":"发现", "imageName":""],
            ["clsName":"Profile", "title":"我", "imageName":""]
        ]
        
        var arrayM = [UIViewController]()
        for dict in array {
            
            arrayM.append(controller(dict: dict))
        }
    
        viewControllers = arrayM
    
    }
    
    
    private func controller(dict:[String: String]) -> UIViewController{
        
        guard let clsName = dict["clsName"],
            let title = dict["title"],
            let imageName = dict["imageName"]
//            let cls = NSClassFromString(Bundle.main.namespace + "." + clsName) as? UIViewController.Type
        else
        {
            return UIViewController()
        }
        
        let storyboard = UIStoryboard.init(name: clsName, bundle: nil)
        let vc = storyboard.instantiateInitialViewController()! as UIViewController
        vc.title = title
        
        return vc
    }
    
    
    
}




