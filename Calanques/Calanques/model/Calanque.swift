//
//  Calanque.swift
//  Calanques
//
//  Created by wiem on 2/28/19.
//  Copyright © 2019 wiem. All rights reserved.
//

import UIKit
import CoreLocation

class Calanque {
    private var _nom : String
    private var _desc : String
    private var _latitude : Double
    private var _longitude : Double
    private var _image : UIImage?
    
    var nom : String {
        return _nom
    }
    
    var desc : String {
        return _desc
    }
    
    var coordonnee: CLLocationCoordinate2D {
        return CLLocationCoordinate2D(latitude: _latitude, longitude: _longitude)
    }
    
    var image : UIImage? {
        return _image
    }
    
    init (nom:String , desc : String , image:UIImage? , latitude :Double , longitude:Double ){
        _nom = nom
        _desc = desc
        _image = image
        _latitude = latitude
        _longitude = longitude
        
    }
    
    
}


