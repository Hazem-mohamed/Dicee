//
//  ViewController.swift
//  Dicee
//
//  Created by Hazem on 12/12/17.
//  Copyright © 2017 Hazem. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var LeftDiceRandomIndex : Int = 0
    var RightDiceRandomIndex : Int = 0
    
    let diceArray = ["dice1","dice2","dice3","dice4","dice5","dice6"]

    @IBOutlet weak var LeftDiceImage: UIImageView!
    
    @IBOutlet weak var RightDiceImage: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        //Chang Dice One The View Loaded
        updateDiceImage()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func RollBtnPressed(_ sender: Any) {
        updateDiceImage()
    }
    
    func updateDiceImage(){
        LeftDiceRandomIndex = Int(arc4random_uniform(6))
        RightDiceRandomIndex = Int(arc4random_uniform(6))
        
        LeftDiceImage.image = UIImage(named: diceArray[LeftDiceRandomIndex])
        
        RightDiceImage.image = UIImage(named: diceArray[RightDiceRandomIndex])
        
    }
    
    override func motionEnded(_ motion: UIEventSubtype, with event: UIEvent?) {
        updateDiceImage()
    }
    
}

