//
//  Bundle+Extension.swift
//  weiboPractice
//
//  Created by 曹鹏旭 on 16/8/12.
//  Copyright © 2016年 cpx. All rights reserved.
//

import Foundation

extension Bundle
{
    var namespace: String
    {

        return infoDictionary?["CFBundleName"] as? String ?? ""
    }
}


