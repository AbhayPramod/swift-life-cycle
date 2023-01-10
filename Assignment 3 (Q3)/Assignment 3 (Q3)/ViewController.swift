//
//  ViewController.swift
//  Assignment 3 (Q3)
//
//  Created by Abhay Pramod on 10/01/23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var winScore: UILabel!
    @IBOutlet weak var emojiLabel: UILabel!
    
    @IBOutlet weak var lossScore: UILabel!
    @IBOutlet weak var userGuess: UITextField!
    
    var wins = 0
    var losses = 0
    var movieName : String?
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        newRound()
    }
    
    var movieList : [String : String] = ["🥛🧅":"glass onion","🥷🐢":"ninja turtles","💀🔥":"ghost rider","🦁🦛🦓🦒":"madagascar","🚗🏁":"cars","🦁👑":"lion king","🚅":"bullet train","😀😃😄😁😆🥹😅😂":"emoji movie"]
    
    func newRound(){
        guard let movieCode = movieList.randomElement()?.key else{
            return
        }
        movieName = movieList[movieCode]
        emojiLabel.text = movieCode
    }
    
    @IBAction func guessButton(_ sender: UIButton) {
        if userGuess.text == movieName{
            wins += 1
            winScore.text = String(wins)
            newRound()
            userGuess.text = ""
        }
        else{
            losses += 1
            lossScore.text = String(losses)
            newRound()
            userGuess.text = ""

        }
    }

    @IBAction func resetButton(_ sender: Any) {
        losses += 1
        lossScore.text = String(losses)
        newRound()
        
    }
}

