//
//  ClimaVC.swift
//  Clima
//
//  Created by Juan Morillo on 17/2/17.
//  Copyright © 2017 Juan Morillo. All rights reserved.
//

import UIKit

class ClimaVC: UIViewController{
    
    @IBOutlet weak var datelabel: UILabel!
    @IBOutlet weak var currentTempLabel: UILabel!
    @IBOutlet weak var locationLabel: UILabel!
    @IBOutlet weak var curentWeatherImage: UIImageView!
    @IBOutlet weak var currenWeatherTypeLabel: UILabel!
    @IBOutlet weak var myTableView: UITableView!
    var currentWeather : CurrentWeather!
    var forecast: Forecast!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        myTableView.delegate = self
        myTableView.dataSource = self
        
        currentWeather = CurrentWeather()
        forecast = Forecast()
        currentWeather.downloadWeatherDetails {
            self.updateMainUI()
        }
    }
    
    }


    func downloadForecastData(completed: DownloadComplete) {
        let forecastURL = URL(string: "")
    

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
