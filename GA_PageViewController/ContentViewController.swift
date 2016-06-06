//
//  ContentViewController.swift
//  GA_PageViewController
//
//  Created by houjianan on 16/6/6.
//  Copyright © 2016年 houjianan. All rights reserved.
//

import UIKit

class ContentViewController: UIViewController {

    var object: UIViewController?
    
    override func viewDidLoad() {
        self.view.backgroundColor = SBSessionManager().randomThemeColor
    }
}
