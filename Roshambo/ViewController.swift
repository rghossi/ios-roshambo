//
//  ViewController.swift
//  Roshambo
//
//  Created by Rafael Rodrigues Ghossi on 3/25/17.
//  Copyright © 2017 Rafael Rodrigues Ghossi. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    func generateRandomPlay() -> String {
        let options = ["rock", "paper", "scissors"]
        let randomIndex = Int(arc4random_uniform(UInt32(options.count)))
        return options[randomIndex]
    }

    @IBAction func rock(_ sender: Any) {
        let controller: ResultViewController
        controller = storyboard?.instantiateViewController(withIdentifier: "ResultViewController") as! ResultViewController
        
        var result : String
        
        switch generateRandomPlay() {
        case "rock":
            result = "It's a tie!"
        case "paper":
            result = "Paper covers rock! You lose!"
        case "scissors":
            result = "Rock crushes scissors! You win!"
        default:
            result = "Oops! Something went wrong!"
        }
        
        controller.resultMessage = result
        present(controller, animated: true, completion: nil)
    }
    
}

