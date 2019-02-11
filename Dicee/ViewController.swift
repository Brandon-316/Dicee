//
//  ViewController.swift
//  Dicee
//
//  Created by Brandon Mahoney on 2/10/19.
//  Copyright © 2019 Brandon Mahoney. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    //MARK: Properties
    var die1: Dice = .three {
        didSet {
            diceImageView1.image = die1.image
        }
    }
    var die2: Dice = .five {
        didSet {
            diceImageView2.image = die2.image
        }
    }
    
    
    //MARK: Outlets
    @IBOutlet weak var diceImageView1: UIImageView!
    @IBOutlet weak var diceImageView2: UIImageView!
    
    
    //MARK: Override methods
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        rollDice()
    }
    
    
    //MARK: Methods
    func roll(die: inout Dice) {
        guard let newDie = Dice.init(rawValue: Int.random(in: 0...5)) else { return }
        die = newDie
    }
    
    func rollDice() {
        roll(die: &die1)
        roll(die: &die2)
    }
    
    
    //MARK: Actions
    @IBAction func rollButtonPressed(_ sender: UIButton) {
        rollDice()
    }
    
}
