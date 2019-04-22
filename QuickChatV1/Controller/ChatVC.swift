//
//  ViewController.swift
//  QuickChatV1
//
//  Created by Kyla Wilson on 4/12/19.
//  Copyright © 2019 Kyla Wilson. All rights reserved.
//

import UIKit

class ChatVC: UIViewController {

    // IBOutlets
    @IBOutlet weak var menuBtn: UIButton!

    
    override func viewDidLoad() {
        super.viewDidLoad()
        SetupSWReveal()
        
    }
    
    func SetupSWReveal() {
        menuBtn.addTarget(self.revealViewController(), action: #selector(SWRevealViewController.revealToggle(_:)), for: UIControl.Event.touchUpInside)
        self.view.addGestureRecognizer(self.revealViewController()!.panGestureRecognizer())
        self.view.addGestureRecognizer(self.revealViewController()!.tapGestureRecognizer())
    }
}

