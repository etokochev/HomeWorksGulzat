//
//  SecondTableViewCell.swift
//  domashka4Gulzat
//
//  Created by Erzhan Tokochev on 3/3/23.
//

import UIKit

class SecondTableViewCell: UITableViewCell {
    
    @IBOutlet weak var imageViewCell: UIImageView!
    @IBOutlet weak var labelName: UILabel!
    @IBOutlet weak var labelItem: UILabel!
    
    public func initUI(name: String, nameItem: String, imageName: String) {
        labelName.text = name
        labelItem.text = nameItem
        imageViewCell.image = UIImage(named: imageName)
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
}
