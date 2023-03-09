//
//  ThirdViewController.swift
//  domashka7Gulzat
//
//  Created by Erzhan Tokochev on 3/9/23.
//

import UIKit

class ThirdViewController: UITabBarController {
    
    let welcomeLabel: UILabel = {
        let label = UILabel()
        label.text = "View Files"
        label.numberOfLines = 0
        label.textColor = .black
        return label
    } ()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        view.addSubview(welcomeLabel)
        welcomeLabel.snp.makeConstraints { make in
            make.centerY.equalToSuperview()
            make.centerX.equalToSuperview()
        }
    }
}
