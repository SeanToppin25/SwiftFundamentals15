//
//  ViewController.swift
//  Two Buttons
//
//  Created by fall2025 on 11/28/25.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var inputText: UITextField!
    
    @IBOutlet weak var displayLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func setDisplayText() {
        displayLabel.text = inputText.text    }
    
    @IBAction func setText(_ sender: UITextField) {
    }
    
    
    @IBAction func clearText(_ sender: UIButton) {
        displayLabel.text = "Placeholder"
    }
}

