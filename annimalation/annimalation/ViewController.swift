//
//  ViewController.swift
//  annimalation
//
//  Created by роман поздняков on 23/01/2019.
//  Copyright © 2019 romchick. All rights reserved.
//

import UIKit

final class ViewController: UIViewController {

    // TODO: - Rename this variable
    private var touch = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    // TODO: - rename method to mainButtonPressed(_ sender: UIButton) for example
    @IBAction private func mainButton(_ sender: UIButton) {
        if !touch {
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
        touch = !touch
    }
}
