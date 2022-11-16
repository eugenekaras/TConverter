//
//  ViewController.swift
//  TConverter
//
//  Created by Евгений Карась on 15.11.22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var cenliusLabel: UILabel!
    @IBOutlet weak var fahrenheitLabel: UILabel!
    @IBOutlet weak var slider: UISlider! {
        didSet {
            slider.maximumValue = 100
            slider.minimumValue = 0
            slider.value = 0
        }
    }
    
    
    @IBAction func sliderChanger(_ sender: UISlider) {
        let temperatureCelcius = Int(round(sender.value))
        cenliusLabel.text = "\(temperatureCelcius)ºC"
        let fahrenheitTemperature = Int(round((sender.value * 9/5) + 32))
        fahrenheitLabel.text = "\(fahrenheitTemperature)ºF"
    }
    
}

