//
//  TableViewCell.swift
//  xib file collectionview
//
//  Created by Cepl on 16/05/22.
//

import UIKit

class TableViewCell: UITableViewCell {

    @IBOutlet weak var titlelbl: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
