//
//  DownloadsTableViewCell.swift
//  tabbaricons
//
//  Created by Cepl on 30/05/22.
//

import UIKit

class DownloadsTableViewCell: UITableViewCell,UICollectionViewDataSource,UICollectionViewDelegate {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return imgview.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let subcell3 = collectionView.dequeueReusableCell(withReuseIdentifier: "downloadcell1", for: indexPath) as! DownloadsCollectionViewCell
        subcell3.imageview.image = imgview[indexPath.item]
        return subcell3
    }
    
    @IBOutlet weak var collectionview: UICollectionView!
    var imgview = [UIImage]()
    @IBOutlet weak var label2: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        collectionview.delegate = self
        collectionview.dataSource = self
        imgview = [UIImage(named: "d")!,
        UIImage(named: "s")!,
        UIImage(named: "a")!,
        UIImage(named: "g")!,
        UIImage(named: "h")!,
        
        UIImage(named: "k")!,
        UIImage(named: "l")!
        ]
        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
