//
//  CollectionCell.swift
//  SpotifyTutorial
//
//  Created by Preston Blake on 6/23/20.
//  Copyright © 2020 Preston. All rights reserved.
//

import UIKit

class CollectionCell: UICollectionViewCell {
    @IBOutlet weak var image: UIImageView!
    @IBOutlet weak var AlbumTitle: UILabel!
    @IBOutlet weak var SubTitle: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }
}
