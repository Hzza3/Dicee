//
//  ViewController.swift
//  Dicee
//
//  Created by Ahmed Hazzaa  on 1/19/18.
//  Copyright © 2018 Ahmed Hazzaa . All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var randomDiceIndex1 : Int = 0
    var randomDiceIndex2 : Int = 0
    var diceArray: Array = [""]

    @IBOutlet weak var diceImageView1: UIImageView!
    @IBOutlet weak var diceImageView2: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        diceArray = ["dice1","dice2","dice3","dice4","dice5","dice6"]
        updateDiceImages()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    @IBAction func rollButtonPressed(_ sender: UIButton) {
        
        updateDiceImages()
    }
    func updateDiceImages(){
        randomDiceIndex1 = Int(arc4random_uniform(6))
        randomDiceIndex2 = Int(arc4random_uniform(6))
        diceImageView1.image = UIImage(named : diceArray[randomDiceIndex1])
        diceImageView2.image = UIImage(named : diceArray[randomDiceIndex2])
        
    }
    override func motionEnded(_ motion: UIEventSubtype, with event: UIEvent?) {
        if motion == .motionShake {
        updateDiceImages()
        }
    }
}

