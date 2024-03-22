//
//  ViewController.swift
//  Insta Clone
//
//  Created by english on 2024-02-22.
//

import UIKit
import FirebaseAuth

class ViewController: UIViewController {
    
    
    @IBOutlet weak var emailText: UITextField!
    

    @IBOutlet weak var passwordText: UITextField!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func LoginButtonPressed(_ sender: UIButton) {
        print("Sign In Button Clicked!")
        //email and pass login, if true => home page, if false => alert
        
        if emailText.text != "" && passwordText.text != "" {
            
            Auth.auth().signIn(withEmail: emailText.text!, password: passwordText.text!){
                (auth, error) in
                
                if error != nil {
                    self.makeAlert(title: "Error", message: error?.localizedDescription ?? "Something went wrong!")
                }else{
            
                  //  print("Loggin In Successfully!")
                  //  self.makeAlert(title: "Sucess", message: "Logging in Succesful.")
                    self.performSegue(withIdentifier: "toFeedVC", sender: nil)
                }
            }
            
        }else{
            makeAlert(title: "Missing?", message: "Email/Password is Missing")
        }
        
    }
    func makeAlert(title: String, message: String ){
        let alert = UIAlertController( title: title, message: message, preferredStyle: UIAlertController.Style.alert)
        let okButton = UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil)
        alert.addAction(okButton)
        self.present( alert, animated: true, completion: nil)
    }

}

