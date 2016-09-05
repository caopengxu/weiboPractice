//
//  UIBarButtonItem+Extensions.swift
//  weiboPractice
//
//  Created by 曹鹏旭 on 16/8/26.
//  Copyright © 2016年 cpx. All rights reserved.
//

import UIKit

extension UIBarButtonItem
{
    convenience init(title: String, fontSize: CGFloat, target: AnyObject?, action: Selector)
    {
        let btn: UIButton = UIButton.init(type: .custom)
        
        btn.frame = CGRect(x: 0, y: 0, width: 32, height: 16)
        
        btn.setTitle(title, for: .normal)
        btn.setTitleColor(#colorLiteral(red: 0.2856909931, green: 0, blue: 0.9589199424, alpha: 1), for: .normal)
        btn.setTitleColor(#colorLiteral(red: 1, green: 0.5, blue: 0, alpha: 1), for: .highlighted)
        
        btn.addTarget(target, action: action, for: .touchUpInside)
        
        self.init(customView: btn)
    }
}
