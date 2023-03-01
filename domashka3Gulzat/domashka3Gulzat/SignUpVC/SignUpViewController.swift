//
//  SignUpViewController.swift
//  domashka3Gulzat
//
//  Created by Erzhan Tokochev on 2/25/23.
//

import UIKit

class SignUpViewController: UIViewController {
    
    @IBOutlet weak var DayLabel: UILabel!
    @IBOutlet weak var yourRegionTF: UITextField!
    @IBOutlet weak var firstNameTF: UITextField!
    @IBOutlet weak var lastNameTF: UITextField!
    @IBOutlet weak var organizationTF: UITextField!
    @IBOutlet weak var emailTF: UITextField!
    @IBOutlet weak var yourTitleTF: UITextField!
    @IBOutlet weak var phoneTF: UITextField!
    @IBOutlet weak var thanksLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func sumbitButton(_ sender: Any) {
        if yourRegionTF.text?.isEmpty ?? true {
            yourRegionTF.layer.borderWidth = 2
            yourRegionTF.layer.borderColor = UIColor.red.cgColor
            yourRegionTF.placeholder = "Заполните!"
        } else {
            yourRegionTF.layer.borderWidth = 0
            yourRegionTF.layer.borderColor = UIColor.white.cgColor
            yourRegionTF.placeholder = "Кайф!"
        }
        
        if firstNameTF.text?.isEmpty ?? true {
            firstNameTF.layer.borderWidth = 2
            firstNameTF.layer.borderColor = UIColor.red.cgColor
            firstNameTF.placeholder = "Заполните!"
        } else {
            firstNameTF.layer.borderWidth = 0
            firstNameTF.layer.borderColor = UIColor.white.cgColor
            firstNameTF.placeholder = "Кайф!"
        }
        
        if lastNameTF.text?.isEmpty ?? true {
            lastNameTF.layer.borderWidth = 2
            lastNameTF.layer.borderColor = UIColor.red.cgColor
            lastNameTF.placeholder = "Заполните!"
        } else {
            lastNameTF.layer.borderWidth = 0
            lastNameTF.layer.borderColor = UIColor.white.cgColor
            lastNameTF.placeholder = "Кайф!"
        }
        
        if organizationTF.text?.isEmpty ?? true {
            organizationTF.layer.borderWidth = 2
            organizationTF.layer.borderColor = UIColor.red.cgColor
            organizationTF.placeholder = "Заполните!"
        } else {
            organizationTF.layer.borderWidth = 0
            organizationTF.layer.borderColor = UIColor.white.cgColor
            organizationTF.placeholder = "Кайф!"
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
        
        if yourTitleTF.text?.isEmpty ?? true {
            yourTitleTF.layer.borderWidth = 2
            yourTitleTF.layer.borderColor = UIColor.red.cgColor
            yourTitleTF.placeholder = "Заполните!"
        } else {
            yourTitleTF.layer.borderWidth = 0
            yourTitleTF.layer.borderColor = UIColor.white.cgColor
            yourTitleTF.placeholder = "Кайф!"
        }
        
        if phoneTF.text?.isEmpty ?? true {
            phoneTF.layer.borderWidth = 2
            phoneTF.layer.borderColor = UIColor.red.cgColor
            phoneTF.placeholder = "Заполните"
        } else {
            phoneTF.layer.borderWidth = 0
            phoneTF.layer.borderColor = UIColor.white.cgColor
            phoneTF.placeholder = "Кайф!"
        }
        
        if yourRegionTF.text?.isEmpty == false &&
            firstNameTF.text?.isEmpty == false &&
            lastNameTF.text?.isEmpty == false &&
            organizationTF.text?.isEmpty == false &&
            emailTF.text?.isEmpty == false &&
            yourTitleTF.text?.isEmpty == false &&
            phoneTF.text?.isEmpty == false{
            let contactsVC = ContactsViewController()
            let name = firstNameTF?.text ?? "Empty"
            let surname = lastNameTF?.text ?? "Empty"
            let title = yourTitleTF?.text ?? "Empty"
            contactsVC.name = name
            contactsVC.surname = surname
            contactsVC.titleL = title
            self.navigationController?.pushViewController(contactsVC, animated: true)
        }
    }
}
