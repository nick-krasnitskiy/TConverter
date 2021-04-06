//
//  ViewController.swift
//  TConverter
//
//  Created by Nick Krasnitskiy on 06.04.2021.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var celsiusLabel: UILabel!
    @IBOutlet weak var fahrenheitLabel: UILabel!
    @IBOutlet weak var slider: UISlider! {
        didSet {
            slider.maximumValue = 100
            slider.minimumValue = 0
            slider.value = 0
        }
    }
    

    @IBAction func sliderChanged(_ sender: UISlider) {
        
        let temperatuteCelsius = Int(round(sender.value))
        celsiusLabel.text = "\(temperatuteCelsius)ºC"
        
        let tempetaruteFahrenheit = Int(round((sender.value * 9 / 5) + 32))
        fahrenheitLabel.text = "\(tempetaruteFahrenheit)ºF"
    }
    
}

