//
//  Location.swift
//  Clima
//
//  Created by Juan Morillo on 22/2/17.
//  Copyright © 2017 Juan Morillo. All rights reserved.
//

import CoreLocation

class Location {
    static var sharedInstance = Location()
    private init() {}
    
    var latitude  : Double!
    var longitude : Double!
}
