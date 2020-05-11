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
    let drumSoundPlayer = try! AVAudioPlayer(data: NSDataAsset(name: "drumSound")!.data)
    
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
}

