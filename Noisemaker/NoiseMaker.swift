//
//  NoiseMaker.swift
//  Noisemaker
//
//  Created by CHRISTOPHER WATSON on 05/21/17.
//  Copyright © 2017 CWatson. All rights reserved.
//

import AVFoundation

class NoiseMaker {
    
    let audioFileNames = ["Guitar", "Applause", "Monster", "Bubbles"]
    let players: [AVAudioPlayer?]
    
    init() {
        players = audioFileNames.map { filename in
            if let url = Bundle.main.url(forResource: filename, withExtension: "wav") {
                return try? AVAudioPlayer(contentsOf: url)
            } else {
                return nil
            }
        }
    }
    
    func play(_ index: Int) {
        if !players.isEmpty && index >= 0 && index < players.count {
            players[index]?.play()
        }
    }
    
}
