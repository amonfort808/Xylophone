//
//  ViewController.swift
//  Xylophone
//
//  Created by anthony monfort on 10/5/18.
//  Copyright © 2018 Anthony Monfort. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController, AVAudioPlayerDelegate {

    // variables
    let soundArray = ["note1", "note2", "note3", "note4", "note5", "note6", "note7"]
    var selectedSoundFileName = ""
    var audioPlayer : AVAudioPlayer!

    override func viewDidLoad() {
        super.viewDidLoad()
    }


    // function plays a sound file with the matching note index
    @IBAction func notePressed(_ sender: UIButton) {
        
        selectedSoundFileName = soundArray[sender.tag - 1]
        
        playSound()
        
    }
    // function calls the AVAudioPlayer library to play the sound file
    func playSound() {
        
        let soundURL = Bundle.main.url(forResource: selectedSoundFileName, withExtension: "wav")
  
        do{
        audioPlayer = try AVAudioPlayer(contentsOf: soundURL!)
        
        audioPlayer.play()
        }
        catch {
            
        }
    }
    
    
}
