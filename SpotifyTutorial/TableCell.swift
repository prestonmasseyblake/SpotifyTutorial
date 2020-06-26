//
//  TableCell.swift
//  SpotifyTutorial
//
//  Created by Preston Blake on 6/23/20.
//  Copyright © 2020 Preston. All rights reserved.
//

import UIKit

class TableCell: UITableViewCell, UICollectionViewDelegate, UICollectionViewDataSource {
   
    var ModelArray: [Model] = []
    var youngThug = Model(imageView: "youngThugAlbum" , AlbumTitle: "Young Thug", SubTitle: "SuperSnake", isArtist: false)
    var theWeekend = Model(imageView: "starboy", AlbumTitle: "StarBoy", SubTitle: "Album By The Weekend", isArtist: false)
    var illenium = Model(imageView: "illenium", AlbumTitle: "Fractures", SubTitle: "Album By Illenium", isArtist: true)
    var lilSkies = Model(imageView: "skies", AlbumTitle: "Signs Of Jelousy", SubTitle: "Album By lil Skies", isArtist: false)
    var tylerTheCreator = Model(imageView: "tyler", AlbumTitle: "FlowerBoy", SubTitle: "Album By Tyler The Creator", isArtist: true)
    var Budgie = Model(imageView: "budgie", AlbumTitle: "Budgie", SubTitle: "Album By Random Band", isArtist: false)
    var america = Model(imageView: "america", AlbumTitle: "Top 32 Hits", SubTitle: "Playlist", isArtist: false)
   
    
    @IBOutlet weak var collectionView: UICollectionView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        collectionView.delegate = self
        collectionView.dataSource = self
        ModelArray.append(youngThug)
        ModelArray.append(theWeekend)
        ModelArray.append(illenium)
        ModelArray.append(lilSkies)
        ModelArray.append(tylerTheCreator)
        ModelArray.append(Budgie)
        ModelArray.append(america)
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    //Mark: - Helpers
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return ModelArray.count
       }
       
       func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "CollectionCell", for: indexPath) as! CollectionCell
        cell.AlbumTitle.text = ModelArray[indexPath.row].AlbumTitle
        cell.image.image = UIImage(named: ModelArray[indexPath.row].imageView!)
        cell.SubTitle.text = ModelArray[indexPath.row].SubTitle
        if ModelArray[indexPath.row].isArtist == true {
            cell.image.setRounded()
        }
        return cell
       }

}
extension UIImageView {
    func setRounded() {
        let radius = self.frame.width / 2
        self.layer.cornerRadius = radius
        self.layer.masksToBounds = true
    }
}
