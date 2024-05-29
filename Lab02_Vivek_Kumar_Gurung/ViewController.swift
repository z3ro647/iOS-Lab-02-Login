//
//  ViewController.swift
//  Lab02_Vivek_Kumar_Gurung
//
//  Created by Vivek Kumar Gurung on 2024-05-27.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var passwordErrorLabel: UILabel!
    @IBOutlet weak var emailErrorLabel: UILabel!
    @IBOutlet weak var loginBtn: UIButton!
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    var validEmail: Bool = false
    var validPassword: Bool = false
    var email: String = ""
    var password: String = ""
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        emailErrorLabel.isHidden = true
        passwordErrorLabel.isHidden = true
        loginBtn.isEnabled = false

        //        let emailRegEx = "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,64}"
        //        let emailPred = NSPredicate(format:"SELF MATCHES %@", emailRegEx)
        //        print(emailPred.evaluate(with: "vivekkumargurung@gmail.com"))
        
    }
    
    
    @IBAction func emailValidator(_ sender: UITextField) {
        let newText = sender.text ?? ""
        if(newText.count > 0) {
            email = newText
            emailErrorLabel.isHidden = true
            emailErrorLabel.text = " "
            validEmail = true
        } else {
            emailErrorLabel.isHidden = false
            emailErrorLabel.text = "Enter email"
            validEmail = false
        }
        if(validEmail == true && validPassword == true) {
            loginBtn.isEnabled = true
        } else {
            loginBtn.isEnabled = false
        }
    }
    
    
    @IBAction func passwordValidator(_ sender: UITextField) {
        let newText = sender.text ?? ""
        if(newText.count > 0) {
            password = newText
            passwordErrorLabel.isHidden = true
            passwordErrorLabel.text = " "
            validPassword = true
        } else {
            passwordErrorLabel.isHidden = false
            passwordErrorLabel.text = "Enter password"
            validPassword = false
        }
        if(validEmail == true && validPassword == true) {
            loginBtn.isEnabled = true
        } else {
            loginBtn.isEnabled = false
        }
    }
    
    @IBAction func loginBtnPressed(_ sender: UIButton) {
        
        if(email == "test1@here.com" && password == "password1") {
            successAlert()
        } else if(email == "test2@there.com" && password == "password2") {
            successAlert()
        } else {
            emailErrorLabel.isHidden = false
            passwordErrorLabel.isHidden = false
            emailErrorLabel.text = "Enter valid email"
            passwordErrorLabel.text = "Enter valid password"
            passwordTextField?.text = ""
            let failAlert = UIAlertController(title: "Authentication", message: "Try again", preferredStyle: .alert)
            let failOkAlertBtn = UIAlertAction(title: "OK", style: .destructive) { action in
                print("Ok clicked!")
            }
            failAlert.addAction(failOkAlertBtn)
            self.present(failAlert, animated: true, completion: nil)
        }
        
    }
    
    func successAlert() {
        let successAlert = UIAlertController(title: "Authentication", message: "Successfully authenticated", preferredStyle: .alert)
        let successOkAlertBtn = UIAlertAction(title: "OK", style: .default) { action in
            print("Ok clicked!")
        }
        successAlert.addAction(successOkAlertBtn)
        self.present(successAlert, animated: true, completion: nil)
    }
    
    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        print("All shook up")
    }
}

