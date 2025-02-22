//
//  ViewController.swift
//  Dicee-iOS13
//
//  Created by Carter Altman on 2/17/24.
//  One of my enchancements was adding a third diceimage view
//  Enchancement 2 is adding a second button that only gives you a number one through three
//  Enchancement 3 is adding a button that animates the rolling
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    
    @IBOutlet weak var diceImageView1: UIImageView!
    @IBOutlet weak var diceImageView2: UIImageView!
    @IBOutlet weak var diceImageView3: UIImageView!
    
    var leftDiceNumber = 1
    var rightDiceNumber = 5
    var audioPlayer: AVAudioPlayer?

    
    //Create a function that is able to play a sound for the dice roll
    func playSound() {
        guard let soundURL = Bundle.main.url(forResource: "dice", withExtension: "mp3") else {
            print("An error has occured playing sound")
            return
        }

        do {
            audioPlayer = try AVAudioPlayer(contentsOf: soundURL)
            audioPlayer?.prepareToPlay()
            audioPlayer?.play()
        } catch {
            print("Error playing sound")
        }
    }

    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.

        
    }
    
    @IBAction func rollButtonPressed(_ sender: UIButton) {
        print("Button got tapped.")
        let diceArray = [#imageLiteral(resourceName: "DiceOne"),#imageLiteral(resourceName: "DiceTwo"),#imageLiteral(resourceName: "DiceThree"),#imageLiteral(resourceName: "DiceFour"),#imageLiteral(resourceName: "DiceFive"),#imageLiteral(resourceName: "DiceSix")]

        let randomNum1 = Int.random(in: 0...5)
        let randomNum2 = Int.random(in: 0...5)
        let randomNum3 = Int.random(in: 0...5)
        
        diceImageView1.image = diceArray[randomNum1]
        diceImageView2.image = diceArray[randomNum2]
        diceImageView3.image = diceArray[randomNum3]
        
        
        
    }
    
    @IBAction func roll2ButtonPressed(_ sender: UIButton) {
        let diceArray = [#imageLiteral(resourceName: "DiceOne"),#imageLiteral(resourceName: "DiceTwo"),#imageLiteral(resourceName: "DiceThree"),#imageLiteral(resourceName: "DiceFour"),#imageLiteral(resourceName: "DiceFive"),#imageLiteral(resourceName: "DiceSix")]
        
        let randomNum1 = Int.random(in: 0...2)
        let randomNum2 = Int.random(in: 0...2)
        let randomNum3 = Int.random(in: 0...2)
        
        diceImageView1.image = diceArray[randomNum1]
        diceImageView2.image = diceArray[randomNum2]
        diceImageView3.image = diceArray[randomNum3]
    }
    
    @IBAction func roll3ButtonPressed(_ sender: UIButton) {
        let diceArray = [#imageLiteral(resourceName: "DiceOne"),#imageLiteral(resourceName: "DiceTwo"),#imageLiteral(resourceName: "DiceThree"),#imageLiteral(resourceName: "DiceFour"),#imageLiteral(resourceName: "DiceFive"),#imageLiteral(resourceName: "DiceSix")]
        
        let randomNum1 = Int.random(in: 0...5)
        let randomNum2 = Int.random(in: 0...5)
        let randomNum3 = Int.random(in: 0...5)
        
        playSound()
        diceImageView1.animationImages = diceArray
        diceImageView1.animationRepeatCount = 2
        diceImageView1.startAnimating( )
        diceImageView2.animationImages = diceArray
        diceImageView2.animationRepeatCount = 2
        diceImageView2.startAnimating( )
        diceImageView3.animationImages = diceArray
        diceImageView3.animationRepeatCount = 2
        diceImageView3.startAnimating( )
        diceImageView1.image = diceArray[randomNum1]
        diceImageView2.image = diceArray[randomNum2]
        diceImageView3.image = diceArray[randomNum3]
        
        
        
         
         
    }
    
    
}

