//
//  ViewController.swift
//  Xylophone
//
//  Created by Angela Yu on 28/06/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    var player: AVAudioPlayer!

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    
    // MARK: Actions
    @IBAction func keyPressed(_ sender: UIButton) {
        
        playSound(bundle: sender.titleLabel!.text!)
        
        // Reduces button's opacity by half
        sender.alpha = 0.5
        
        // Apply delay of 0.2 seconds
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.2) {
            // Return button's opacity to normal
            sender.alpha = 1.0
        }
    }
    
    
    // MARK: Functions and Methods
    func playSound(bundle: String) {
        
        // Find file from main bundle
        let url = Bundle.main.url(forResource: bundle, withExtension: "wav")
        player = try! AVAudioPlayer(contentsOf: url!)
        player.play()
                
    }


}


