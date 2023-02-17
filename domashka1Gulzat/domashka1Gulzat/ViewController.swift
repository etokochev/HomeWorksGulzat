//
//  ViewController.swift
//  2lessonGulzat
//
//  Created by Erzhan Tokochev on 2/17/23.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var imageLogo: UIImageView!
    @IBOutlet weak var vhodLabel: UILabel!
    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var inputNameTextField: UITextField!

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    @IBAction func loginButton(_ sender: Any) {
        if nameTextField.text?.isEmpty ?? true {
            nameTextField.layer.borderWidth = 2
            nameTextField.layer.borderColor = UIColor.red.cgColor
            nameTextField.placeholder = "Заполните!"
        } else {
            nameTextField.layer.borderWidth = 0
            nameTextField.layer.borderColor = UIColor.white.cgColor
            nameTextField.placeholder = "Кайф!"
        }
        
        if inputNameTextField.text?.isEmpty ?? true {
            inputNameTextField.layer.borderWidth = 2
            inputNameTextField.layer.borderColor = UIColor.red.cgColor
            inputNameTextField.placeholder = "Заполните!"
        } else {
            inputNameTextField.layer.borderWidth = 0
            inputNameTextField.layer.borderColor = UIColor.white.cgColor
            inputNameTextField.placeholder = "Кайф!"
        }
    }
    
    @IBAction func signInButton(_ sender: Any) {
        if nameTextField.text?.isEmpty ?? true {
            nameTextField.layer.borderWidth = 2
            nameTextField.layer.borderColor = UIColor.red.cgColor
            nameTextField.placeholder = "Заполните!"
        } else {
            nameTextField.layer.borderWidth = 0
            nameTextField.layer.borderColor = UIColor.white.cgColor
            nameTextField.placeholder = "Кайф!"
        }
        
        if inputNameTextField.text?.isEmpty ?? true {
            inputNameTextField.layer.borderWidth = 2
            inputNameTextField.layer.borderColor = UIColor.red.cgColor
            inputNameTextField.placeholder = "Заполните!"
        } else {
            inputNameTextField.layer.borderWidth = 0
            inputNameTextField.layer.borderColor = UIColor.white.cgColor
            inputNameTextField.placeholder = "Кайф!"
        }
    }
}

