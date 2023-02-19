//
//  SignUpViewController.swift
//  domashka2Gulzat
//
//  Created by Erzhan Tokochev on 2/19/23.
//

import UIKit

class SignUpViewController: UIViewController {
    
    @IBOutlet weak var theBoyLogo: UIImageView!
    @IBOutlet weak var whiteBack: UIView!
    
    @IBOutlet weak var FullNameLabel: UILabel!
    @IBOutlet weak var FullNameTextField: UITextField!
    
    @IBOutlet weak var numberLabel: UILabel!
    @IBOutlet weak var numberTextField: UITextField!
    
    @IBOutlet weak var emailLabel: UILabel!
    @IBOutlet weak var emailTextField: UITextField!
    
    @IBOutlet weak var userNameLabel: UILabel!
    @IBOutlet weak var userNameTextField: UITextField!
    
    @IBOutlet weak var passwordLabel: UILabel!
    @IBOutlet weak var passwordTextField: UITextField!
    
    @IBOutlet weak var conPasswordLabel: UILabel!
    @IBOutlet weak var conPwdTextField: UITextField!
    
    @IBOutlet weak var haveAccountLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func signUpButton(_ sender: Any) {
        if FullNameTextField.text?.isEmpty ?? true {
            FullNameTextField.layer.borderWidth = 2
            FullNameTextField.layer.borderColor = UIColor.red.cgColor
            FullNameTextField.placeholder = "Заполните!"
        } else {
            FullNameTextField.layer.borderWidth = 0
            FullNameTextField.layer.borderColor = UIColor.white.cgColor
            FullNameTextField.placeholder = "Кайф!"
        }
        
        if numberTextField.text?.isEmpty ?? true {
            numberTextField.layer.borderWidth = 2
            numberTextField.layer.borderColor = UIColor.red.cgColor
            numberTextField.placeholder = "Заполните!"
        } else {
            numberTextField.layer.borderWidth = 0
            numberTextField.layer.borderColor = UIColor.white.cgColor
            numberTextField.placeholder = "Кайф!"
        }
        
        if emailTextField.text?.isEmpty ?? true {
            emailTextField.layer.borderWidth = 2
            emailTextField.layer.borderColor = UIColor.red.cgColor
            emailTextField.placeholder = "Заполните!"
        } else {
            emailTextField.layer.borderWidth = 0
            emailTextField.layer.borderColor = UIColor.white.cgColor
            emailTextField.placeholder = "Кайф!"
        }
        
        if userNameTextField.text?.isEmpty ?? true {
            userNameTextField.layer.borderWidth = 2
            userNameTextField.layer.borderColor = UIColor.red.cgColor
            userNameTextField.placeholder = "Заполните!"
        } else {
            userNameTextField.layer.borderWidth = 0
            userNameTextField.layer.borderColor = UIColor.white.cgColor
            userNameTextField.placeholder = "Кайф!"
        }
        
        if passwordTextField.text?.isEmpty ?? true {
            passwordTextField.layer.borderWidth = 2
            passwordTextField.layer.borderColor = UIColor.red.cgColor
            passwordTextField.placeholder = "Заполните!"
        } else {
            passwordTextField.layer.borderWidth = 0
            passwordTextField.layer.borderColor = UIColor.white.cgColor
            passwordTextField.placeholder = "Кайф!"
        }
        
        if conPwdTextField.text?.isEmpty ?? true {
            conPwdTextField.layer.borderWidth = 2
            conPwdTextField.layer.borderColor = UIColor.red.cgColor
            conPwdTextField.placeholder = "Заполните!"
        } else {
            conPwdTextField.layer.borderWidth = 0
            conPwdTextField.layer.borderColor = UIColor.white.cgColor
            conPwdTextField.placeholder = "Кайф!"
        }
        if FullNameTextField.text?.isEmpty == false &&
            numberTextField.text?.isEmpty == false &&
            emailTextField.text?.isEmpty == false &&
            userNameTextField.text?.isEmpty == false &&
            passwordTextField.text?.isEmpty == false &&
            conPwdTextField.text?.isEmpty == false {
            let successVC = self.storyboard?.instantiateViewController(withIdentifier: "SuccessViewController") as! SuccessViewController
            self.navigationController?.pushViewController(successVC, animated: false)
        }
    }
    
    @IBAction func SignInButton(_ sender: Any) {
        let signInVC = self.storyboard?.instantiateViewController(withIdentifier: "ViewController") as! ViewController
        self.navigationController?.pushViewController(signInVC, animated: false)
    }
    
}
