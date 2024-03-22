//
//  SettingsViewController.swift
//  Insta Clone
//
//  Created by Areeba Khan on 2024-03-07.
//

import UIKit
import FirebaseAuth

class SettingsViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    @IBAction func logoutButtonPressed(_ sender: UIButton) {
        
        do{
            try Auth.auth().signOut()
        }catch{
            print("some errors")
            performSegue(withIdentifier: "toLoginVC", sender: nil)
        }
        
        performSegue(withIdentifier: "toLoginVC", sender: nil)
    }
    

}
