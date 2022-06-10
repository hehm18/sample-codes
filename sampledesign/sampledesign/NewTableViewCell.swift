//
//  NewTableViewCell.swift
//  sampledesign
//
//  Created by Cepl on 20/05/22.
//

import UIKit

class NewTableViewCell: UITableViewCell {

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    @IBOutlet weak var plusimg: UIImageView!
    @IBOutlet weak var view3: UIView!
    
    @IBOutlet weak var view1: UIView!
    @IBOutlet weak var stackview: UIStackView!
    @IBOutlet weak var sidebar: UILabel!
    @IBOutlet weak var title: UILabel!
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
