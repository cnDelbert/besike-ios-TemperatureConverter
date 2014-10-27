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
    @IBOutlet weak var titleLabel: UILabel!
    
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

//    override func viewWillLayoutSubviews() {
//        super.viewWillLayoutSubviews()
//        
//        let screen = UIScreen.mainScreen()
//        println("screen fixed bounds: \(screen.fixedCoordinateSpace.bounds)")
//        println("screen bounds: \(screen.bounds)")
//        println("top layout guide: \(topLayoutGuide.length)")
//        titleLabel.frame = CGRect(x: 0.0, y: topLayoutGuide.length+16.0, width: screen.bounds.width, height: 21.0)
//    }

}

