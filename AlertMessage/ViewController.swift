//
//  ViewController.swift
//  AlertMessage
//
//  Created by Cihan on 22.01.2024.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var labelSignUp: UILabel!
    @IBOutlet weak var textFieldEmail: UITextField!
    @IBOutlet weak var textFieldPassword: UITextField!
    @IBOutlet weak var textFieldPasswordAgain: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    @IBAction func buttonSignUp(_ sender: Any) {
        
        if textFieldEmail.text == "" {
            // email'ini girmemişsin
            alertMessage(title: "Error Message",message: "Incorrect e-mail address entered")
            
        } else if textFieldPassword.text == "" {
            //parolanı girmemişsin
            alertMessage(title: "Error Message",message: "Incorrect password entered")
        } else if textFieldPassword.text != textFieldPasswordAgain.text {
            //parola uyuşmuyor
            alertMessage(title: "Error Message",message: "Incorrect password again entered")
        } else {
            //kayıt işlemi başarılı
            alertMessage(title: "Successful",message: "Registration has been completed")
        }
    }
    
    func alertMessage(title:String,message:String) {
        let alertMessage = UIAlertController(title: title, message: message, preferredStyle: UIAlertController.Style.alert)
        
        let okButton = UIAlertAction(title: "OK", style: UIAlertAction.Style.default) { UIAlertAction in
            print("OK Button Entered")
        }
        
        alertMessage.addAction(okButton)
        self.present(alertMessage, animated: true, completion: nil)
    }
}

