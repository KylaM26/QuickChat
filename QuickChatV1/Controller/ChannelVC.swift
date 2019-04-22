//
//  ChannelVC.swift
//  QuickChatV1
//
//  Created by Kyla Wilson on 4/21/19.
//  Copyright © 2019 Kyla Wilson. All rights reserved.
//

import UIKit

class ChannelVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        SetupSWReveal()
    }
    
    func SetupSWReveal() {
        self.revealViewController()?.rearViewRevealWidth = self.view.frame.size.width - 100
    }
   

}
