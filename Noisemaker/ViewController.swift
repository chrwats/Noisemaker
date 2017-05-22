//
//  ViewController.swift
//  Noisemaker
//
//  Created by CHRISTOPHER WATSON on 05/21/17.
//  Copyright © 2017 CWatson. All rights reserved.
//

import UIKit
import AVFoundation

let noiseMaker = NoiseMaker()

class ViewController: UIViewController {
    
    @IBAction func playSound(sender: UIButton) {
        noiseMaker.play(sender.tag)
        print(sender.tag)
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    
}

