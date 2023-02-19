//
//  ViewController.swift
//  domashka2Gulzat
//
//  Created by Erzhan Tokochev on 2/19/23.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var theBoyLogo: UIImageView!
    @IBOutlet weak var WelcomeText: UILabel!
    @IBOutlet weak var SignInText: UILabel!
    @IBOutlet weak var whiteBack: UIView!
    @IBOutlet weak var idEmail: UILabel!
    @IBOutlet weak var inputEmailTextField: UITextField!
    @IBOutlet weak var passwordText: UILabel!
    @IBOutlet weak var inputPasswordTextField: UITextField!
    @IBOutlet weak var rememberText: UILabel!
    @IBOutlet weak var haveAccountText: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func forgotPasswordButton(_ sender: Any) {
        let forgotPwdVC = self.storyboard?.instantiateViewController(withIdentifier: "ForgotPwdViewController") as! ForgotPwdViewController
        self.navigationController?.pushViewController(forgotPwdVC, animated: true)
    }
    
    @IBAction func signInButton(_ sender: Any) {
        if inputEmailTextField.text?.isEmpty ?? true {
            inputEmailTextField.layer.borderWidth = 2
            inputEmailTextField.layer.borderColor = UIColor.red.cgColor
            inputEmailTextField.placeholder = "Заполните!"
        } else {
            inputEmailTextField.layer.borderWidth = 0
            inputEmailTextField.layer.borderColor = UIColor.white.cgColor
            inputEmailTextField.placeholder = "Кайф!"
        }
        
        if inputPasswordTextField.text?.isEmpty ?? true {
            inputPasswordTextField.layer.borderWidth = 2
            inputPasswordTextField.layer.borderColor = UIColor.red.cgColor
            inputPasswordTextField.placeholder = "Заполните!"
        } else {
            inputPasswordTextField.layer.borderWidth = 0
            inputPasswordTextField.layer.borderColor = UIColor.white.cgColor
            inputPasswordTextField.placeholder = "Кайф!"
        }
        
        if inputEmailTextField.text?.isEmpty == false &&
            inputPasswordTextField.text?.isEmpty == false {
            let successVC = self.storyboard?.instantiateViewController(withIdentifier: "SuccessViewController") as! SuccessViewController
            self.navigationController?.pushViewController(successVC, animated: false)
        }
    }
    
    @IBAction func signUpButton(_ sender: Any) {
        let signUpVC = self.storyboard?.instantiateViewController(withIdentifier: "SignUpViewController") as! SignUpViewController
        self.navigationController?.pushViewController(signUpVC, animated: false)
    }
}
