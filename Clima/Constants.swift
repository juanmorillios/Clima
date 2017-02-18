//
//  Constants.swift
//  Clima
//
//  Created by Juan Morillo on 18/2/17.
//  Copyright © 2017 Juan Morillo. All rights reserved.
//

import Foundation

let BASE_URL = "http://api.openweathermap.org/data/2.5/weather?"
let LATITUDE = "lat="
let LONGITUDE = "&long="
let APP_ID = "&appid="
let APP_KEY = "6517933721ae021dd56c4074d0b9294f"

typealias DownloadComplete = () -> ()

let CURRENT_WEATHER_URL = "\(BASE_URL)\(LATITUDE)2.16\(LONGITUDE)41.39\(APP_ID)\(APP_KEY)"
