//
//  ViewController.swift
//  InstagramClone
//
//  Created by Ömer Faruk Öztürk on 5.12.2022.
//

import UIKit
import FirebaseAuth

class HomeVC: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        handleNotAuthonticated()
    }
    
    func handleNotAuthonticated() {
        if Auth.auth().currentUser == nil {
            let loginVC = LoginVC()
            loginVC.modalPresentationStyle = .fullScreen
            present(loginVC, animated: true)
        }
    }
    
}

