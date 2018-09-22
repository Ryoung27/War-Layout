//
//  ViewController.swift
//  WarApp
//
//  Created by Richard Young on 9/22/18.
//  Copyright © 2018 Richard Young. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var LeftImageView: UIImageView!
    
    @IBOutlet weak var RightImageView: UIImageView!
    
    @IBOutlet weak var LeftScoreLabel: UILabel!
    
    @IBOutlet weak var RightScoreLabel: UILabel!
    
    
    var leftScore = 0
    var rightScore = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
    }

    
    
    @IBAction func DealTapped(_ sender: Any) {
        
        let leftRandomNumber = arc4random_uniform(13) + 2
//        print("left random number is: \(leftRandomNumber)")
        let rightRandomNumber = arc4random_uniform(13) + 2
//        print("right random number is: \(rightRandomNumber)")
        LeftImageView.image = UIImage(named: "card\(leftRandomNumber)")
        RightImageView.image = UIImage(named: "card\(rightRandomNumber)")
        
        
        
        if leftRandomNumber > rightRandomNumber {
            leftScore += 1
            LeftScoreLabel.text = String(leftScore)
        }
        else if rightRandomNumber > leftRandomNumber {
            rightScore += 1
            RightScoreLabel.text = String(rightScore)
        }
        else {
            leftScore -= 1
            LeftScoreLabel.text = String(leftScore)
            rightScore -= 1
            RightScoreLabel.text = String(rightScore)
            
        }
        
    }
    

}


