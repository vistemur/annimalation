//
//  ViewController.swift
//  annimalation
//
//  Created by роман поздняков on 23/01/2019.
//  Copyright © 2019 romchick. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    var touch = false
    
    @IBAction func mainButton(_ sender: UIButton) {
        if touch == false{
            touch = true
            UIView.animate(withDuration: 3) {
                sender.layer.cornerRadius = sender.frame.height/2
                sender.backgroundColor = .red
            }
        }else{
            touch = false
            UIView.animate(withDuration: 3) {
                sender.layer.cornerRadius = 0
                
                sender.backgroundColor = .blue
            }
        }
      
    }
    
}

