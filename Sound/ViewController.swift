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

    let drumSoundPlayer = try! AVAudioPlayer(data: NSDataAsset(name: "drumSound")!.data)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func tapDrumButton(){
        drumSoundPlayer.currentTime = 0
        drumSoundPlayer.play()
    }

}

