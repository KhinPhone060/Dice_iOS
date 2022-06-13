//
//  ViewController.swift
//  Dicee-iOS13
//
//  Created by Angela Yu on 11/06/2019.
//  Copyright © 2019 London App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    //IBOutlet connect the design file to the code file
    @IBOutlet weak var diceImageView1: UIImageView!
    
    @IBOutlet weak var diceImageView2: UIImageView!
    
    //the code inside of this block will trigger when the view load up
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    //trigger an action when the particular UI element is interacted
    @IBAction func rollButtonPressed(_ sender: UIButton) {
        //diceFaces array is a constant becuse it's never mutated
        let diceFaces = [#imageLiteral(resourceName: "DiceOne") , #imageLiteral(resourceName: "DiceTwo") , #imageLiteral(resourceName: "DiceThree") , #imageLiteral(resourceName: "DiceFour") , #imageLiteral(resourceName: "DiceFive") , #imageLiteral(resourceName: "DiceSix") ]
        diceImageView1.image = diceFaces[Int.random(in: 0...5)]
        diceImageView2.image = diceFaces[Int.random(in: 0...5)]
    }
    
}

