//
//  ViewController.swift
//  Noisemaker
//
//  Created by CHRISTOPHER WATSON on 05/21/17.
//  Copyright © 2017 CWatson. All rights reserved.
//

import UIKit
import AVFoundation

var player: AVAudioPlayer?

class ViewController: UIViewController {
    
    
    
    @IBAction func playSound(_ sender: UIButton) {
        if let buttonName = sender.currentTitle {
            playAudio(buttonName: buttonName)
        }
    }
    
    func playAudio(buttonName: String) {
        if let url = Bundle.main.url(forResource: buttonName, withExtension: "wav") {player = try? AVAudioPlayer(contentsOf: url)
            player?.play()}
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    
}

