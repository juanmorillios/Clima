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
let LONGITUDE = "&lon="
let APP_ID = "&appid="
let APP_KEY = "6256dae197122ea14f6cafcf163b95d9"

typealias DownloadComplete = () -> ()

let CURRENT_WEATHER_URL = "http://api.openweathermap.org/data/2.5/weather?lat=41.35&lon=2.08&appid=6256dae197122ea14f6cafcf163b95d9"
let FORECAST_URL = "http://api.openweathermap.org/data/2.5/forecast/daily?lat=41.35&lon=2.08&cnt=10&mode=json&appid=6256dae197122ea14f6cafcf163b95d9"


