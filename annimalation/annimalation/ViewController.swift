//
//  ViewController.swift
//  annimalation
//
//  Created by роман поздняков on 23/01/2019.
//  Copyright © 2019 romchick. All rights reserved.
//

import UIKit

final class ViewController: UIViewController {

    private var UserTouchesButton = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func mainButtonPressed(_ sender: UIButton) {
        if !UserTouchesButton {
            UIView.animate(withDuration: 3) {
                sender.layer.cornerRadius = sender.frame.height / 2
                sender.backgroundColor = .red
            }
        } else {
            UIView.animate(withDuration: 3) {
                sender.layer.cornerRadius = 0
                sender.backgroundColor = .blue
            }
        }
        UserTouchesButton = !UserTouchesButton
    }
}
