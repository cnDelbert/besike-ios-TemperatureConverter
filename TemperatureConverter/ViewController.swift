//
//  ViewController.swift
//  TemperatureConverter
//
//  Created by Delbert on 14/10/26.
//  Copyright (c) 2014年 Delbert. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var celsiusLabel: UILabel!
    @IBOutlet weak var fahrenheitLabel: UILabel!
    @IBOutlet weak var kelvinLabel: UILabel!
    @IBOutlet weak var temperatureSlider: UISlider!
    
    @IBAction func temperatureSliderChanged(sender: UISlider){
        //
        self.updateTemperatureDisplays()
    }
    
    func updateTemperatureDisplays(){
        // TO DO
        var celsius = temperatureSlider.value
        var fahrenheit = ( celsius * 5/9 ) + 32
        var kelvin = celsius + 273.15
        
        celsiusLabel.text = String(format: "%.1fC", arguments: [celsius])
        fahrenheitLabel.text = String(format: "%.1fF", arguments: [fahrenheit])
        kelvinLabel.text = String(format: "%.1fK", arguments: [kelvin])
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

