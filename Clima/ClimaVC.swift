//
//  ClimaVC.swift
//  Clima
//
//  Created by Juan Morillo on 17/2/17.
//  Copyright © 2017 Juan Morillo. All rights reserved.
//

import UIKit
import Alamofire

class ClimaVC: UIViewController{
    
    @IBOutlet weak var datelabel: UILabel!
    @IBOutlet weak var currentTempLabel: UILabel!
    @IBOutlet weak var locationLabel: UILabel!
    @IBOutlet weak var curentWeatherImage: UIImageView!
    @IBOutlet weak var currenWeatherTypeLabel: UILabel!
    @IBOutlet weak var myTableView: UITableView!
    var currentWeather : CurrentWeather!
    var forecast: Forecast!
    var forecasts = [Forecast]()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        myTableView.delegate = self
        myTableView.dataSource = self
        
        currentWeather = CurrentWeather()
        //forecast = Forecast()
        
        currentWeather.downloadWeatherDetails {
            
            self.updateMainUI()
        }
    }
    
}

    func downloadForecastData(completed: @escaping DownloadComplete) {
        let forecastURL = URL(string: FORECAST_URL)!
        Alamofire.request(forecastURL).responseJSON { response in
            let result = response.result
            
            if let dict = result.value as? Dictionary<String, Any> {
                if let list = dict["list"] as? [Dictionary<String, Any>] {
                
                    for obj in list {
                    
                        let forecast = Forecast(weatherDict: obj)
                        self.forecats.append(forecast)
                    
                    }
                
                }
                
                if let weather = dict["weather"] as? [Dictionary<String, Any>] {
                    if let main = weather[0]["main"] as? String {
                        self._weatherType = main.capitalized
                        print(self._weatherType)
                    }
                }
                if let main = dict["main"] as? Dictionary<String, Any> {
                    
                    if let currentTemperature = main["temp"] as? Double {
                        
                        let kelvinToFarenheitPreDivision = (currentTemperature * (9/5) - 459.67)
                        let kelvinToFirenheit = Double(round(10 * kelvinToFarenheitPreDivision/10))
                        self._currentTemp = kelvinToFirenheit
                        print(self._currentTemp)
                    }
                    
                }
                
            }
           completed()
        }
        
    }



    extension ClimaVC: UITableViewDelegate, UITableViewDataSource {
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 3
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "weatherCell", for: indexPath)
        
        return cell
    }
    
    func updateMainUI() {
        datelabel.text = currentWeather.date
        currentTempLabel.text = "\(currentWeather.currentTemp)"
        currenWeatherTypeLabel.text = currentWeather.weatherType
        locationLabel.text = currentWeather.cityName
        curentWeatherImage.image = UIImage(named: currentWeather.weatherType)
    }
    
    }


