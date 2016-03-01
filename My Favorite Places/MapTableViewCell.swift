//
//  MapTableViewCell.swift
//  My Favorite Places
//
//  Created by Bruce Burgess on 3/1/16.
//  Copyright © 2016 Bruce Burgess. All rights reserved.
//

import UIKit
import MapKit

class MapTableViewCell: UITableViewCell {

    //Connect the storyboard to code
    @IBOutlet weak var favoriteNameLabel: UILabel!
    @IBOutlet weak var favoriteMapView: MKMapView!

}
