//
//  ViewController.swift
//  Light-AppDevWithSwift
//
//  Created by Admin on 13.09.17.
//  Copyright © 2017 NS. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var lightButton: UIButton!
    
    var lightOn = true
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateBackground()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func buttonPressed(_ sender: Any) {
        lightOn = !lightOn
        updateBackground()
    }
    
    func updateBackground() {
        if lightOn {
            view.backgroundColor = .white
            lightButton.setTitle("Tap to turn the light Off", for: .normal)
        } else {
            view.backgroundColor = .black
            lightButton.setTitle("Tap to turn the light On", for: .normal)
        }
    }

}

