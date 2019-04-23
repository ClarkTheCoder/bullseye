//
//  ViewController.swift
//  BullsEye
//
//  Created by carson on 2019-03-12.
//  Copyright © 2019 com.carson. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    // gloabl variable in reference to slider object
    @IBOutlet weak var slider: UISlider!
    @IBOutlet weak var targetLabel: UILabel!
    @IBOutlet weak var totalScore: UILabel!
    @IBOutlet weak var roundLabel: UILabel!
    
    var sliderValue: Int = 0
    var targetValue = 0
    var score = 0
    var round = 0
    
    
    // everthing in this method happens upon startup
    override func viewDidLoad() {
        super.viewDidLoad()
        // set initial value of slider at 50 (half)
        sliderValue = 50
        startNewRound()
    }
    
    // crtl + drag button to view controller to make connection between hit me button and .swift file
    @IBAction func showAlert() {
        
        // *** Eliminate Negative Values *** //
        
        // abs = absoulte value AKA makes any number positive
        let difference = abs(sliderValue - targetValue)
        let points = 100 - difference
        
        score += points
        round += 1
        
        if sliderValue == targetValue {
            // create a variable that prints a string informing the user of the slider value
            let youWinMessage = "You nailed it!"
            
            // create the alert and set the title, message and style.
            let winAlert = UIAlertController(title: "You win!", message: youWinMessage, preferredStyle: .alert)
            
            // create the action (confirm yes or no type button)
            let winAction = UIAlertAction(title: "Nice!", style: .default, handler: nil)
            
            winAlert.addAction(winAction)
            
            // present everything
            present(winAlert, animated: true, completion: nil)
            
            startNewRound()
        } else {
            // create a variable that prints a string informing the user of the slider value
            let message = "You hit the following value: \(sliderValue)" + "\n The target value was: \(targetValue)"
                + "\n The difference was: \(difference)"
                + "\n You scored: \(points) points."
            
            // create the alert and set the title, message and style.
            let alert = UIAlertController(title: "Results", message: message, preferredStyle: .alert)
            
            // create the action (confirm yes or no type button)
            let action = UIAlertAction(title: "Okay", style: .default, handler: nil)
            
            alert.addAction(action)
            
            // present everything
            present(alert, animated: true, completion: nil)
            
            startNewRound()
        }
    }
    
    @IBAction func sliderMoved(_ slider: UISlider) {
        sliderValue = lroundf(slider.value * 100)
    }
    
    func updateLabels() {
        targetLabel.text = String(targetValue)
        totalScore.text = String(score)
        roundLabel.text = String(round)
    }
    
    func startNewRound() {
        targetValue = Int.random(in: 1...100)
        updateLabels()
    }
    
    
    // code change test for git

}

