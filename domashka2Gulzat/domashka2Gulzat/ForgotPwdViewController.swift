//
//  ForgonPwdViewController.swift
//  domashka2Gulzat
//
//  Created by Erzhan Tokochev on 2/19/23.
//

import UIKit

class ForgotPwdViewController: UIViewController {
    
    @IBOutlet weak var imageLogo: UIImageView!
    
    @IBOutlet weak var smsTextField: UITextField!
    
    @IBOutlet weak var mobileEmailLabel: UILabel!
    
    @IBOutlet weak var whiteBack: UIView!
    
    @IBOutlet weak var idLabel: UILabel!
    
    @IBOutlet weak var mobileOrEmailLabel: UILabel!
    
    @IBOutlet weak var numberTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        smsTextField.isEnabled = false
    }

    
    @IBAction func getOTPButton(_ sender: Any) {
        if numberTextField.text?.isEmpty ?? true {
            numberTextField.layer.borderWidth = 2
            numberTextField.layer.borderColor = UIColor.red.cgColor
            numberTextField.placeholder = "Заполните!"
        } else {
            smsTextField.isEnabled = true
            numberTextField.layer.borderWidth = 0
            numberTextField.layer.borderColor = UIColor.white.cgColor
            numberTextField.placeholder = "Кайф!"
        }
    }
    
    @IBAction func sumbitButton(_ sender: Any) {
        if smsTextField.text?.isEmpty ?? true {
            smsTextField.layer.borderWidth = 2
            smsTextField.layer.borderColor = UIColor.red.cgColor
            smsTextField.placeholder = "Заполните!"
        } else {
            smsTextField.layer.borderWidth = 0
            smsTextField.layer.borderColor = UIColor.white.cgColor
            smsTextField.placeholder = "Кайф!"
        }
        if smsTextField.text?.isEmpty == false {
            let newPwdVC = self.storyboard?.instantiateViewController(withIdentifier: "NewPwdViewController") as! NewPwdViewController
            self.navigationController?.pushViewController(newPwdVC, animated: false)
        }
    }
}
