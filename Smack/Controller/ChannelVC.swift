//
//  ChannelVC.swift
//  Smack
//
//  Created by Sascha Landegge on 13/01/2018.
//  Copyright © 2018 Codeunicum. All rights reserved.
//

import UIKit

class ChannelVC: UIViewController {

    //outlets
    @IBOutlet weak var loginBtn: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.revealViewController().rearViewRevealWidth = (self.view.frame.size.width - 60)
    }
    
    @IBAction func loginBtnPressed(_ sender: Any) {
        performSegue(withIdentifier: TO_LOGIN, sender: nil)
    }
}
