//
//  ViewController.swift
//  Sound
//
//  Created by 森田貴帆 on 2020/05/11.
//  Copyright © 2020 森田貴帆. All rights reserved.
//

import UIKit
import AVFoundation
class ViewController: UIViewController {
    @IBOutlet var drumBUtton: UIButton!
    @IBOutlet var pianoBUtton: UIButton!
    @IBOutlet var guitarBUtton: UIButton!
    let drumSoundPlayer = try! AVAudioPlayer(data: NSDataAsset(name: "drumSound")!.data)
    let pianoSoundPlayer = try! AVAudioPlayer(data: NSDataAsset(name: "pianoSound")!.data)
    let guitarSoundPlayer = try! AVAudioPlayer(data: NSDataAsset(name: "guitarSound")!.data)
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func touchDownDrumButton(){
        drumBUtton.setImage(UIImage(named:"drumPlayingImage"), for: .normal)
        drumSoundPlayer.currentTime = 0
        drumSoundPlayer.play()
    }
    @IBAction func touchupdrumbutton(){
        drumBUtton.setImage(UIImage(named:"drumImage"), for: .normal)
    }
    
    @IBAction func touchdownpianobutton(){
        pianoBUtton.setImage(UIImage(named:"pianoPlayingImage"), for: .normal)
        pianoSoundPlayer.currentTime = 0
        pianoSoundPlayer.play()
       }
    
    @IBAction func touchuppianobutton(){
           pianoBUtton.setImage(UIImage(named:"pianoImage"), for: .normal)
    }
    
    @IBAction func touchDownguitarButton(){
          guitarBUtton.setImage(UIImage(named:"guitarPlayingImage"), for: .normal)
          guitarSoundPlayer.currentTime = 0
          guitarSoundPlayer.play()
      }
      @IBAction func touchupguitarbutton(){
          guitarBUtton.setImage(UIImage(named:"guitarImage"), for: .normal)
      }
      
}

