//
//  Model.swift
//  SpotifyTutorial
//
//  Created by Preston Blake on 6/23/20.
//  Copyright © 2020 Preston. All rights reserved.
//

import UIKit

class Model {
    var imageView: String?
    var AlbumTitle: String?
    var SubTitle: String?
    var isArtist: Bool
    
    init(imageView:String?,AlbumTitle:String?,SubTitle:String,isArtist:Bool) {
        self.imageView = imageView
        self.AlbumTitle = AlbumTitle
        self.SubTitle = SubTitle
        self.isArtist = isArtist
    }
}
