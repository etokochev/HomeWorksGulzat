//
//  ContactsTableViewCell.swift
//  domashka3Gulzat
//
//  Created by Erzhan Tokochev on 2/28/23.
//

import UIKit

class ContactsTableViewCell: UITableViewCell {
    
    @IBOutlet weak var imageLogo: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var biographyLabel: UILabel!
    
    public func initUI(name: String, image: String, biography: String) {
        nameLabel.text = name
        imageLogo.image = UIImage(named: image)
        biographyLabel.text = biography
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
    
}


