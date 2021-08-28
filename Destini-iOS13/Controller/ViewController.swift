//
//  ViewController.swift
//  Destini-iOS13
//
//  Created by Angela Yu on 08/08/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var storyLabel: UILabel!
    @IBOutlet weak var choice1Button: UIButton!
    @IBOutlet weak var choice2Button: UIButton!

    let stories = [Story(title: "You see a fork in the road.",
                         choice1: "Take a left",
                         choice2: "Take a right"),
                   Story(title: "You see a tiger.",
                         choice1: "Shout for help",
                         choice2: "Play dead"),
                   Story(title: "You find a treasure chest.",
                         choice1: "Open it",
                         choice2: "Check for traps")
    ]
    
    var userStory = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        userStory = 0
        updateUI()
    }

    @IBAction func choiceMade(_ sender: UIButton) {
        let userAnswer = sender.currentTitle
        
        if userAnswer == "Take a left" {
            userStory = 1
        } else {
            userStory = 2
        }
        
        updateUI()
    }
    
    func updateUI() {
        storyLabel.text = stories[userStory].title
        choice1Button.setTitle(stories[userStory].choice1, for: .normal)
        choice2Button.setTitle(stories[userStory].choice2, for: .normal)
    }
}
