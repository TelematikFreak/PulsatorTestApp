//
//  ViewController.swift
//  PulsatorTestApp
//
//  Created by Alexander Moreno Guillén on 6/12/19.
//  Copyright © 2019 Alexander Moreno Guillén. All rights reserved.
//

import UIKit
import Pulsator

class ViewController: UIViewController {
    var radarState = false
    let pulsator = Pulsator()

    @IBOutlet weak var button: UIButton!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        //button.setTitle("Start Animation", for: .normal)
        setUpPulsator()
    }
    
    private func setUpPulsator() {
        pulsator.frame = CGRect(x: button.frame.width / 2, y: button.frame.height / 2, width: 0, height: 0)
        button.layer.addSublayer(pulsator)
        pulsator.numPulse = 5
        pulsator.radius = 200.0
        pulsator.backgroundColor = UIColor(red: 98/255, green: 0/255, blue: 243/255, alpha: 1).cgColor
        pulsator.animationDuration = 5.0
        pulsator.pulseInterval = 1.0
    }
    
    @IBAction func onButtonPressed(_ sender: UIButton) {
        if radarState {
            pulsator.stop()
            radarState = false
        } else {
            pulsator.start()
            radarState = true
        }
    }
    
}

