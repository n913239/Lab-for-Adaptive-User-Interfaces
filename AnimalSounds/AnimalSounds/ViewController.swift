//
//  ViewController.swift
//  AnimalSounds
//
//  Created by mikewang on 2017/8/10.
//  Copyright © 2017年 mike. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    // 用來存放動物叫聲的字典Dictionary
    let animalSounds = ["cat": "Meow", "dog": "Woof", "cow": "Moo"]
    
    @IBOutlet weak var animalSoundLabel: UILabel!
    @IBAction func animalButtonTapped(_ sender: UIButton) {
        // 這邊將三個動物都連結到同一個func，並透過ID來做區別
        if let animalID = sender.restorationIdentifier {
            switch animalID {
            case "cat":
                guard let catSound = animalSounds["cat"] else { return }
                animalSoundLabel.text = "\(catSound)!"
                let sound = SimpleSound(named: "\(catSound.lowercased())")                
                sound.play()
            case "dog":
                guard let dogSound = animalSounds["dog"] else { return }
                animalSoundLabel.text = "\(dogSound)!"
                let sound = SimpleSound(named: "\(dogSound.lowercased())")
                sound.play()
            case "cow":
                guard let cowSound = animalSounds["cow"] else { return }
                animalSoundLabel.text = "\(cowSound)!"
                let sound = SimpleSound(named: "\(cowSound.lowercased())")
                sound.play()
            default: return
            }
            
        }
        
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

