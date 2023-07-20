//
//  AppDelegate.swift
//  Xylophone
//
//  Created by neo-level on 19/07/2023.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    var player: AVAudioPlayer?
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func KeyPressed(_ sender: UIButton) {
        playSound()
    }
    
    func playSound() {
        guard let path = Bundle.main.path(forResource: "C", ofType:"wav") else {
            return }
        let url = URL(fileURLWithPath: path)
        
        do {
            player = try AVAudioPlayer(contentsOf: url)
            player?.play()
            
        } catch let error {
            print(error.localizedDescription)
        }
    }
}

