//
//  ViewController.swift
//  domashka1Gulzat
//
//  Created by Erzhan Tokochev on 2/14/23.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var logo: UIImageView!
    
    @IBOutlet weak var vhod: UILabel!
    
    @IBOutlet weak var nameTextField: UITextField!
    
    @IBOutlet weak var textNameLabel: UILabel!
    
    @IBOutlet weak var inputNameTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func loginButton(_ sender: Any) {
        if nameTextField.text?.isEmpty ?? true || inputNameTextField.text?.isEmpty ?? true {
            nameTextField.layer.borderWidth = 2
            nameTextField.layer.borderColor = UIColor.red.cgColor
            inputNameTextField.layer.borderWidth = 2
            inputNameTextField.layer.borderColor = UIColor.red.cgColor
            nameTextField.placeholder = "Заполните!"
            inputNameTextField.placeholder = "Заполните!"
        }
    }
    
    @IBAction func signInButton(_ sender: Any) {
        if nameTextField.text?.isEmpty ?? true || inputNameTextField.text?.isEmpty ?? true {
            nameTextField.layer.borderWidth = 2
            nameTextField.layer.borderColor = UIColor.red.cgColor
            inputNameTextField.layer.borderWidth = 2
            inputNameTextField.layer.borderColor = UIColor.red.cgColor
            nameTextField.placeholder = "Заполните!"
            inputNameTextField.placeholder = "Заполните!"
        }
    }
}

