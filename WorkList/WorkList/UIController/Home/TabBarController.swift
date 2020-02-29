//
//  TabBarControllerViewController.swift
//  WorkList
//
//  Created by 曲波 on 2020/02/23.
//  Copyright © 2020 曲波. All rights reserved.
//

import UIKit

class TabBarController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let homeVc = CalculatorViewController()
        homeVc.title = "计算器"
        self.addChild(homeVc)
    }
}
