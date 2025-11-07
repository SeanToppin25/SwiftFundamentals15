//
//  ViewController.swift
//  Light
//
//  Created by fall2025 on 11/6/25.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var lightButton: UIButton!
    var lightOn = true

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    fileprivate func updateUI() {
        if lightOn {
            view.backgroundColor = .white
            lightButton.setTitle("On", for: .normal)
            lightButton.setTitleColor(UIColor.black, for: .normal)
        } else {
            view.backgroundColor = .black
            lightButton.setTitle("Off", for: .normal)
            lightButton.setTitleColor(UIColor.white, for: .normal)        }
    }
    
    @IBAction func bottunTapped(_ sender: UIButton) {
        lightOn.toggle()
        updateUI()
    }
}

