//
//  ViewController.swift
//  Dicee
//
//  Created by Sarvad shetty on 10/31/17.
//  Copyright © 2017 Sarvad shetty. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    //MARK: Variables
    var randomDiceIndex1: Int = 0
    var randomDiceIndex2: Int = 0
    let arrPic:[String] = ["dice1","dice2","dice3","dice4","dice5","dice6"]
    
    //MARK: Outlets
    @IBOutlet weak var diceImageView1: UIImageView!
    @IBOutlet weak var diceImageView2: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
        updateDiceImages()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    //MARK: Action
    @IBAction func rollButtonPressed(_ sender: UIButton) {
        updateDiceImages()
  
    }
    
    //MARK: Functions
    func updateDiceImages(){
        randomDiceIndex1 = Int(arc4random_uniform(6))
        randomDiceIndex2 = Int(arc4random_uniform(6))
        diceImageView1.image = UIImage(named: arrPic[randomDiceIndex1])
        diceImageView2.image = UIImage(named: arrPic[randomDiceIndex2])
    }
    override func motionEnded(_ motion: UIEventSubtype, with event: UIEvent?) {
        updateDiceImages()
    }
    
}

