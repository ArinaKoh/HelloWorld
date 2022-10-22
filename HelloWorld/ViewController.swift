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
        //greetingButton.layer.cornerRadius = 10
        greetingButton.configuration = setUpButton(with: "Show greeting")
    }

    @IBAction func greetingButtonTapped() {
        greetingLabel.isHidden.toggle()
        
        greetingButton.configuration = setUpButton(
            with: greetingLabel.isHidden ? "Show greeting" : "Hide greeting"
        )
    }
    
    
    private func setUpButton(with title: String) -> UIButton.Configuration{
        var buttonConfiguration = UIButton.Configuration.filled()
        buttonConfiguration.title = title
        buttonConfiguration.baseBackgroundColor = #colorLiteral(red: 0.910154283, green: 0.4194336236, blue: 0.6157357693, alpha: 1)
        buttonConfiguration.buttonSize = .large
        buttonConfiguration.cornerStyle = .large
        buttonConfiguration.attributedTitle?.font = UIFont.systemFont(ofSize: 24, weight: .semibold)
        return buttonConfiguration
        
    }
}

