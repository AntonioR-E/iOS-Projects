//
//  ViewController.swift
//  3D Tic-Tac-Toe
//
//  Created by Steve Jobs on 12/3/17.
//  Copyright © 2017 antonio. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var currentPlayer = 1 // x
    var gameIsActive = true
    var gameState = [ 0,0,0,
                     0,0,0,
                     0,0,0,
                     
                     0,0,0,
                     0,0,0,
                     0,0,0,
                     
                     0,0,0,
                     0,0,0,
                     0,0,0
                     ]
    let winningCombos = [
                         [0,1,2],[3,4,5],[6,7,8],[9,10,11],[12,13,14],[15,16,17],[18,19,20],[21,22,23],[24,25,26],
                         [0,3,6],[1,4,7],[2,5,8],[9,12,15],[10,13,16],[11,14,17],[18,21,24],[19,22,25],[20,23,26],
                         [0,4,8],[2,4,6],[9,13,17],[11,13,15],[18,22,26],[20,22,24],
                         [0,9,18],[1,10,19],[2,11,20],[3,12,21],[4,13,22],[5,14,23],[6,15,24],[7,16,25],[8,17,26],
                         [0,10,20],[2,10,18],[3,13,23],[5,13,21],[6,16,26],[8,16,24],
                         [0,12,24],[6,12,18],[1,13,25],[7,13,19],[2,14,26],[8,14,20],
                         [0,13,26],[2,13,24],[6,13,20],[8,13,18]
                        ]
    
    
    @IBOutlet weak var topLabel: UILabel!
    @IBAction func userActions(_ sender: Any) {
        
        let myTag: Int?
        myTag = (sender as AnyObject).tag
        print(myTag!)
        
        
        if (gameState[(sender as AnyObject).tag-1] == 0 && gameIsActive == true) {
            gameState[(sender as AnyObject).tag-1] = currentPlayer
            
            if (currentPlayer==1)
            {
                (sender as AnyObject).setTitle("X",for: .normal)
                (sender as AnyObject).setTitleColor(.black, for: .normal)
                currentPlayer = 2
                topLabel.text = "O's turn"
            }
            else
            {
                (sender as AnyObject).setTitle("O",for: .normal)
                (sender as AnyObject).setTitleColor(.red, for: .normal)
                currentPlayer = 1
                topLabel.text = "X's turn"
            }
        }
        for combos in winningCombos
        {
            if(gameState[combos[0]] != 0 && gameState[combos[0]] == gameState[combos[1]] && gameState[combos[1]] == gameState[combos[2]])
            {
                gameIsActive = false
                if (gameState[combos[0]] == 1)
                {
                   
                    for x in combos
                    {
                        let tempButton = self.view.viewWithTag(x+1) as? UIButton
                        tempButton?.setTitleColor(.green, for: .normal)
//                        tempButton?.setTitleShadowColor(.black, for: .normal)
//                        tempButton?.titleLabel?.shadowOffset = CGSize(width:2,height:2)
                        topLabel.text = "X wins!!"
                    }
                }
                else
                {
                    
                    for x in combos
                    {
                        let tempButton = self.view.viewWithTag(x+1) as? UIButton
                        tempButton?.setTitleColor(.green, for: .normal)
//                        tempButton?.setTitleShadowColor(.red, for: .normal)
//                        tempButton?.titleLabel?.shadowOffset = CGSize(width:2,height:2)
                        topLabel.text = "O wins!!"
                    }
                    
                }
            }
        }
        
        
    }
    @IBAction func restartGame(_ sender: Any) {
        currentPlayer = 1 // x
        gameIsActive = true
        gameState = [ 0,0,0,
                          0,0,0,
                          0,0,0,
                          
                          0,0,0,
                          0,0,0,
                          0,0,0,
                          
                          0,0,0,
                          0,0,0,
                          0,0,0
        ]
        topLabel.text = "X's turn"
        for b in 1...27
        {
            let tempButton = view.viewWithTag(b) as? UIButton
            tempButton?.setTitle("  ", for: .normal)
            
        }
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

