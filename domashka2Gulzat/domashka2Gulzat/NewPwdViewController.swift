//
//  NewPwdViewController.swift
//  domashka2Gulzat
//
//  Created by Erzhan Tokochev on 2/19/23.
//

import UIKit

class NewPwdViewController: UIViewController {
    
    @IBOutlet weak var blockLogo: UIImageView!
    @IBOutlet weak var idOrEmail: UITextField!
    
    @IBOutlet weak var newPasswordLabel: UILabel!
    @IBOutlet weak var newPwdTextField: UITextField!
    
    @IBOutlet weak var conPasswordLabel: UILabel!
    @IBOutlet weak var conPwdTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        newPwdTextField.isEnabled = false
        conPwdTextField.isEnabled = false
    }
    
    
    @IBAction func SubmitButton(_ sender: Any) {
        
        if idOrEmail.text?.isEmpty ?? true {
            idOrEmail.layer.borderWidth = 2
            idOrEmail.layer.borderColor = UIColor.red.cgColor
            idOrEmail.placeholder = "Заполните!"
        } else {
            idOrEmail.layer.borderWidth = 0
            idOrEmail.layer.borderColor = UIColor.white.cgColor
            idOrEmail.placeholder = "Кайф!"
            newPwdTextField.isEnabled = true
            conPwdTextField.isEnabled = true
        }

        if newPwdTextField.text?.isEmpty ?? true {
            newPwdTextField.layer.borderWidth = 2
            newPwdTextField.layer.borderColor = UIColor.red.cgColor
            newPwdTextField.placeholder = "Заполните!"
        } else {
            newPwdTextField.layer.borderWidth = 0
            newPwdTextField.layer.borderColor = UIColor.white.cgColor
            newPwdTextField.placeholder = "Кайф!"
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
        
        if newPwdTextField.text != conPwdTextField.text {
            newPwdTextField.layer.borderWidth = 2
            newPwdTextField.layer.borderColor = UIColor.red.cgColor
            newPwdTextField.placeholder = "Пароли не совпадают!"
            
            conPwdTextField.layer.borderWidth = 2
            conPwdTextField.layer.borderColor = UIColor.red.cgColor
            conPwdTextField.placeholder = "Пароли не совпадают!"
        }
        
        if newPwdTextField.text?.isEmpty == false && conPwdTextField.text?.isEmpty == false{
            if newPwdTextField.text == conPwdTextField.text {
                let successVC = self.storyboard?.instantiateViewController(withIdentifier: "SuccessViewController") as! SuccessViewController
                self.navigationController?.pushViewController(successVC, animated: false)
            }
        }
    }
}



