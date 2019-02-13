//
//  ViewController.swift
//  Dicee
//
//  Created by Chin-Chou Ko on 2018/12/28.
//  Copyright © 2018 Johnny Ko. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    let diceArray = ["dice1", "dice2", "dice3", "dice4", "dice5", "dice6"]
    var randomDiceInteger1: Int = 0
    var randomDiceInteger2: Int = 0
    
    
    @IBOutlet weak var diceImageView1: UIImageView!
    @IBOutlet weak var diceImageView2: UIImageView!
   
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        udpdateDiceImages()
        
    }
    
    @IBAction func rollButtonPressed(_ sender: UIButton) {
        udpdateDiceImages()
    }
    
    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        udpdateDiceImages()
    }
    
    func udpdateDiceImages() {
        randomDiceInteger1 = Int.random(in: 0 ... 5)
        randomDiceInteger2 = Int.random(in: 0 ... 5)
        
        diceImageView1.image = UIImage(named: diceArray[randomDiceInteger1])
        diceImageView2.image = UIImage(named: diceArray[randomDiceInteger2])
    }
    
    
}

