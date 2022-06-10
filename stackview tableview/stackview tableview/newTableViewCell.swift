//
//  newTableViewCell.swift
//  stackview tableview
//
//  Created by Cepl on 18/05/22.
//

import UIKit

class newTableViewCell: UITableViewCell {
  

   
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    @IBOutlet weak var view1: UIView!
    @IBAction func money(_ sender: UIButton) {
        
        
    }
    @IBOutlet weak var progress: UIProgressView!
   
    @IBOutlet weak var lbl2: UILabel!
    @IBOutlet weak var lbl1: UILabel!
    @IBOutlet weak var stackview: UIStackView!
    @IBOutlet weak var backgroung: UIView!
    
    @IBOutlet weak var view2: UIView!
    @IBOutlet weak var moneyLBL: UILabel!
    @IBOutlet weak var subtitlelbl: UILabel!
    @IBOutlet weak var titlelbl: UILabel!
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        // Configure the view for the selected state
        
        backgroung.layer.cornerRadius = 6
        
        backgroung.layer.shadowRadius = 10
        backgroung.layer.shadowOpacity = 1.0
        backgroung.layer.shadowOffset = CGSize(width: 3, height: 3)
        backgroung.layer.shadowColor = UIColor.blue.cgColor
        stackview.layer.cornerRadius = 6
        stackview.layer.masksToBounds = true
    }
    
    
}

