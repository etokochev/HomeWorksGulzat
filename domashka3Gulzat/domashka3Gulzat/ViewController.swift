//
//  ViewController.swift
//  domashka3Gulzat
//
//  Created by Erzhan Tokochev on 2/25/23.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var loginLabel: UILabel!
    @IBOutlet weak var logoImage: UIImageView!
    @IBOutlet weak var countryTF: UITextField!
    @IBOutlet weak var emailTF: UITextField!
    @IBOutlet weak var passwordTF: UITextField!
    @IBOutlet weak var serviceLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func signInButton(_ sender: Any) {
        if countryTF.text?.isEmpty ?? true {
            countryTF.layer.borderWidth = 2
            countryTF.layer.borderColor = UIColor.red.cgColor
            countryTF.placeholder = "Заполните!"
        } else {
            countryTF.layer.borderWidth = 0
            countryTF.layer.borderColor = UIColor.white.cgColor
            countryTF.placeholder = "Кайф!"
        }
        
        if emailTF.text?.isEmpty ?? true {
            emailTF.layer.borderWidth = 2
            emailTF.layer.borderColor = UIColor.red.cgColor
            emailTF.placeholder = "Заполните!"
        } else {
            emailTF.layer.borderWidth = 0
            emailTF.layer.borderColor = UIColor.white.cgColor
            emailTF.placeholder = "Кайф!"
        }
        
        if passwordTF.text?.isEmpty ?? true {
            passwordTF.layer.borderWidth = 2
            passwordTF.layer.borderColor = UIColor.red.cgColor
            passwordTF.placeholder = "Заполните!"
        } else {
            passwordTF.layer.borderWidth = 0
            passwordTF.layer.borderColor = UIColor.white.cgColor
            passwordTF.placeholder = "Кайф!"
        }
        if countryTF.text?.isEmpty == false &&
            emailTF.text?.isEmpty == false &&
            passwordTF.text?.isEmpty == false {
            let contactsVC = ContactsViewController()
            let name = emailTF?.text ?? "Empty"
            contactsVC.name = name
            self.navigationController?.pushViewController(contactsVC, animated: true)

        }
    }
    
    @IBAction func forgotPwdButton(_ sender: Any) {
    }
    
    @IBAction func cFAButton(_ sender: Any) {
        let signUp = SignUpViewController()
        self.navigationController?.pushViewController(signUp, animated: true)
    }
}
