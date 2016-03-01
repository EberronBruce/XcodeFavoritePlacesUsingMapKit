//
//  NewFavoriteViewController.swift
//  My Favorite Places
//
//  Created by Bruce Burgess on 3/1/16.
//  Copyright © 2016 Bruce Burgess. All rights reserved.
//

import UIKit
import MapKit
import CoreData

class NewFavoriteViewController: UIViewController {

    @IBOutlet weak var textField: UITextField!
    @IBOutlet weak var map: MKMapView!
    
    var locationManager : CLLocationManager?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.map.showsUserLocation = true
        
        self.locationManager = CLLocationManager()
        self.locationManager?.requestWhenInUseAuthorization()


    }

    @IBAction func doneTapped(sender: AnyObject) {
        
        let context = (UIApplication.sharedApplication().delegate as! AppDelegate).managedObjectContext
        
        let favorite1 = NSEntityDescription.insertNewObjectForEntityForName("Favorite", inManagedObjectContext: context) as! Favorite
        
        favorite1.name = self.textField.text
        favorite1.latitude = self.map.region.center.latitude
        favorite1.longitude = self.map.region.center.longitude
        favorite1.latitudeDelta = self.map.region.span.latitudeDelta
        favorite1.longitudeDelta = self.map.region.span.longitudeDelta
        
        do{
            try context.save()
        } catch _ {
            
        }
        

        
        self.dismissViewControllerAnimated(true, completion: nil)
    }
    
    @IBAction func cancelTapped(sender: AnyObject) {
        self.dismissViewControllerAnimated(true, completion: nil)
    }

}
