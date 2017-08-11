//
//  ViewController.swift
//  ElementQuiz
//
//  Created by mikewang on 2017/8/10.
//  Copyright © 2017年 mike. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    let elementList = ["八神チーム", "女性格闘家チーム", "日本チーム", "異世界チーム"]
    var currentElementIndex = 0
    struct ChemicalElement {
        let symbol: String
        let name: String
        let atomicWeight: Int
        let imageName: String
    }
    
    func updateElement() {
        answerLabel.text = "?"
        let elementName = elementList[currentElementIndex]
        let image = UIImage(named: elementName)
        imageView.image = image
    }
    
    @IBOutlet weak var answerLabel: UILabel!
    @IBOutlet weak var imageView: UIImageView!
    @IBAction func showAnswer(_ sender: UIButton) {
        answerLabel.text = elementList[currentElementIndex]
    }
    @IBAction func gotoNextElement(_ sender: UIButton) {
        currentElementIndex += 1
        if currentElementIndex >= elementList.count {
            currentElementIndex = 0
        }
        updateElement()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateElement()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

