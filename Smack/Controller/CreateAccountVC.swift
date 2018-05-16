//
//  CreateAccountVC.swift
//  Smack
//
//  Created by Sascha Landegge on 13/01/2018.
//  Copyright © 2018 Codeunicum. All rights reserved.
//

import UIKit

class CreateAccountVC: UIViewController {

    //Outlets
    @IBOutlet weak var usernameTxt: UITextField!
    @IBOutlet weak var emailTxt: UITextField!
    @IBOutlet weak var passTxt: UITextField!
    @IBOutlet weak var userImg: UIImageView!
    
    // Variables
    var avatarName = "profileDefault"
    var avatarColor = "[0.5, 0.5, 0.5, 1]"
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func closePressed(_ sender: Any) {
        performSegue(withIdentifier: UNWIND, sender: nil)
    }
    
    @IBAction func createAccountPressed(_ sender: Any) {
        guard let name = usernameTxt.text , usernameTxt.text != "" else {return}
        guard let email = emailTxt.text , emailTxt.text != "" else {return}
        guard let pass = passTxt.text, passTxt.text != "" else { return }
        
        AuthService.instance.registerUser(email: email, password: pass) { (succes) in
            if succes {
                print("registered user!")
                AuthService.instance.loginUser(email: email, password: pass, completion: { (succes) in
                    if succes {
                        print("User logged in")
                        AuthService.instance.createUser(name: name, email: email, avatarName: self.avatarName, avatarColor: self.avatarColor, completion: { (succes) in
                            if succes {
                                print("User created")
                                print(UserDataService.instance.name, UserDataService.instance.avatarName)
                                self.performSegue(withIdentifier: UNWIND, sender: nil)
                            }
                        })
                    }else{
                        print("User NOT logged in")
                    }
                })
            }
        }
    }
    
    @IBAction func pickAvatarPressed(_ sender: Any) {
    }
    
    @IBAction func pickBGColorPressed(_ sender: Any) {
    }
}
