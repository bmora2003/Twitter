//
//  LoginViewController.swift
//  Twitter
//
//  Created by Bryan Mora  on 9/22/21.
//  Copyright © 2021 Dan. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewDidAppear(_ animated: Bool) {
        if UserDefaults.standard.bool(forKey: "userLoggedIn") == true {
            self.performSegue(withIdentifier: "LoginToHome", sender: self)
        }
    }
    @IBAction func onLogginButton(_ sender: Any) {
        let myUrl = "https://api.twitter.com/oauth/request_token"
        TwitterAPICaller.client?.login(url: myUrl, success: { self.performSegue(withIdentifier: "LoginToHome", sender: self)
            
        }, failure: {(Error) in
            print("Could not log in!")
        })
         
        UserDefaults.standard.set(true, forKey: "userLoggedIn")
    }
}
