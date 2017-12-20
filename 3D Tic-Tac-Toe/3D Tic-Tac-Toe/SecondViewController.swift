//
//  SecondViewController.swift
//  3D Tic-Tac-Toe
//
//  Created by Steve Jobs on 12/6/17.
//  Copyright © 2017 antonio. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    @IBAction func actionperformed(_ sender: Any) {
        let myTag: Int?
        myTag = (sender as AnyObject).tag
        print(myTag!)
    }
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }


}
