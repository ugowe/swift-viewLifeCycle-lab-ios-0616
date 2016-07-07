//
//  ViewController.swift
//  FunWithViews
//
//  Created by James Campagno on 6/1/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var die1: UIView!
    @IBOutlet weak var die2: UIView!
    @IBOutlet weak var die3: UIView!
    @IBOutlet weak var die4: UIView!
    @IBOutlet weak var die5: UIView!
    @IBOutlet weak var die6: UIView!
    @IBOutlet weak var die7: UIView!
    @IBOutlet weak var roll1: UIView!
    @IBOutlet weak var roll2: UIView!
    @IBOutlet weak var roll3: UIView!
    @IBOutlet weak var roll4: UIView!
    @IBOutlet weak var roll5: UIView!
    @IBOutlet weak var roll6: UIView!
    @IBOutlet weak var label1: UILabel!
    @IBOutlet weak var label2: UILabel!
    @IBOutlet weak var label3: UILabel!
    @IBOutlet weak var label4: UILabel!
    @IBOutlet weak var label5: UILabel!
    @IBOutlet weak var label6: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        hideViewsAndLabels()
        
    }
    var numberOfTimesRolled = 1
    @IBAction func diceRolled(sender: AnyObject) {
        
        
        
        switch numberOfTimesRolled {
        case 1:
            turn1()
            randomDiceRoll()
            label1.text = numberText
            numberOfTimesRolled += 1
        case 2:
            turn2()
            randomDiceRoll()
            label2.text = numberText
            numberOfTimesRolled += 1
        case 3:
            turn3()
            randomDiceRoll()
            label3.text = numberText
            numberOfTimesRolled += 1
        case 4:
            turn4()
            randomDiceRoll()
            label4.text = numberText
            numberOfTimesRolled += 1
        case 5:
            turn5()
            randomDiceRoll()
            label5.text = numberText
            numberOfTimesRolled += 1
        case 6:
            turn6()
            randomDiceRoll()
            label6.text = numberText
            numberOfTimesRolled = 1
        default:
            break
        }
        
        
        
//        if (numberOfTimesRolled == 7) {
//            numberOfTimesRolled = 0
//            hideViewsAndLabels()
//        }
    }
    
    
    
    

    
    // Returns back a random Int (1, 2, 3, 4, 5, or 6)
    func randomDiceRoll() -> Int {
        let randomNumber = Int(arc4random_uniform(6) + 1)
        switch randomNumber {
        case 1:
            rolled1()
        case 2:
            rolled2()
        case 3:
            rolled3()
        case 4:
            rolled4()
        case 5:
            rolled5()
        case 6:
            rolled6()
        default:
            break
        }
        
        return randomNumber
    }
    
    
    var numberText: String = ""
    
    
    func hideViewsAndLabels() {
        die1.hidden = true
        die2.hidden = true
        die3.hidden = true
        die4.hidden = true
        die5.hidden = true
        die6.hidden = true
        die7.hidden = true
        roll1.hidden = true
        roll2.hidden = true
        roll3.hidden = true
        roll4.hidden = true
        roll5.hidden = true
        roll6.hidden = true
        label1.hidden = true
        label2.hidden = true
        label3.hidden = true
        label4.hidden = true
        label5.hidden = true
        label6.hidden = true
    }
    
    func rolled1() {
        die1.hidden = true
        die2.hidden = true
        die3.hidden = true
        die4.hidden = true
        die5.hidden = true
        die6.hidden = true
        die7.hidden = false
        
        numberText = "1"
    }
    
    func rolled2() {
        die1.hidden = true
        die2.hidden = false
        die3.hidden = true
        die4.hidden = true
        die5.hidden = false
        die6.hidden = true
        die7.hidden = true
        
        numberText = "2"
    }
    
    func rolled3() {
        die1.hidden = true
        die2.hidden = true
        die3.hidden = false
        die4.hidden = false
        die5.hidden = true
        die6.hidden = true
        die7.hidden = false
        
        numberText = "3"
    }
    
    func rolled4() {
        die1.hidden = false
        die2.hidden = true
        die3.hidden = false
        die4.hidden = false
        die5.hidden = true
        die6.hidden = false
        die7.hidden = true
        
        numberText = "4"
    }
    
    func rolled5() {
        die1.hidden = false
        die2.hidden = true
        die3.hidden = false
        die4.hidden = false
        die5.hidden = true
        die6.hidden = false
        die7.hidden = false
        
        numberText = "5"
    }
    
    func rolled6() {
        die1.hidden = false
        die2.hidden = false
        die3.hidden = false
        die4.hidden = false
        die5.hidden = false
        die6.hidden = false
        die7.hidden = true
        
        numberText = "6"
    }
    
    func turn1() {
        roll1.hidden = false
        roll2.hidden = true
        roll3.hidden = true
        roll4.hidden = true
        roll5.hidden = true
        roll6.hidden = true
        label1.hidden = false
        label2.hidden = true
        label3.hidden = true
        label4.hidden = true
        label5.hidden = true
        label6.hidden = true
    }
    
    func turn2() {
        roll1.hidden = false
        roll2.hidden = false
        roll3.hidden = true
        roll4.hidden = true
        roll5.hidden = true
        roll6.hidden = true
        label1.hidden = false
        label2.hidden = false
        label3.hidden = true
        label4.hidden = true
        label5.hidden = true
        label6.hidden = true
    }
    
    func turn3() {
        roll1.hidden = false
        roll2.hidden = false
        roll3.hidden = false
        roll4.hidden = true
        roll5.hidden = true
        roll6.hidden = true
        label1.hidden = false
        label2.hidden = false
        label3.hidden = false
        label4.hidden = true
        label5.hidden = true
        label6.hidden = true
    }
    
    func turn4() {
        roll1.hidden = false
        roll2.hidden = false
        roll3.hidden = false
        roll4.hidden = false
        roll5.hidden = true
        roll6.hidden = true
        label1.hidden = false
        label2.hidden = false
        label3.hidden = false
        label4.hidden = false
        label5.hidden = true
        label6.hidden = true
    }
    
    func turn5() {
        roll1.hidden = false
        roll2.hidden = false
        roll3.hidden = false
        roll4.hidden = false
        roll5.hidden = false
        roll6.hidden = true
        label1.hidden = false
        label2.hidden = false
        label3.hidden = false
        label4.hidden = false
        label5.hidden = false
        label6.hidden = true
    }

    func turn6() {
        roll1.hidden = false
        roll2.hidden = false
        roll3.hidden = false
        roll4.hidden = false
        roll5.hidden = false
        roll6.hidden = false
        label1.hidden = false
        label2.hidden = false
        label3.hidden = false
        label4.hidden = false
        label5.hidden = false
        label6.hidden = false
    }

}