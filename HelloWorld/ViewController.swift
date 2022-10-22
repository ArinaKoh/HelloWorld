//
//  ViewController.swift
//  HelloWorld
//
//  Created by Arina on 22.10.2022.
//

import UIKit

class ViewController: UIViewController {

   
    @IBOutlet weak var greetingLabel: UILabel!
    @IBOutlet var greetingButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        greetingLabel.isHidden = true
        greetingButton.layer.cornerRadius = 10
    }

    @IBAction func greetingButtonTapped() {
        greetingLabel.isHidden.toggle()
        
        greetingButton.setTitle(
            greetingLabel.isHidden ? "Show greeting" : "Hide greeting",
            for: .normal
        )
    }
    
}

