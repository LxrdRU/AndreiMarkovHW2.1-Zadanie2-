//
//  ViewController.swift
//  AndreiMarkovHW2.1(Zadanie2)
//
//  Created by Andrey Markov on 2020-08-20.
//  Copyright © 2020 Andrey Markov. All rights reserved.
//

import UIKit
enum CurrentLight{
    case red,yellow,green
}
class ViewController: UIViewController {

    @IBOutlet weak var redSign: UIView!
    @IBOutlet weak var yellowSign: UIView!
    @IBOutlet weak var greenSign: UIView!
    @IBOutlet weak var startButton: UIButton!
    
    private var currentLight = CurrentLight.red
    private let lightIsOn:CGFloat = 1
    private let lightIsOff:CGFloat = 0.3
    
    override func viewDidLoad() {
        super.viewDidLoad()
        startButton.layer.cornerRadius = 10
        redSign.alpha = lightIsOff
        yellowSign.alpha = lightIsOff
        greenSign.alpha = lightIsOff
        
    }
    override func viewWillLayoutSubviews() {
        redSign.layer.cornerRadius = redSign.frame.width/2
        yellowSign.layer.cornerRadius = yellowSign.frame.width/2
        greenSign.layer.cornerRadius = greenSign.frame.width/2
        
    }

    @IBAction func startButtonPressed(_ sender: Any) {
        startButton.setTitle("NEXT", for: .normal)
        switch currentLight{
        case .red:
            greenSign.alpha = lightIsOff
            redSign.alpha = lightIsOff
            currentLight = .yellow
            redSign.alpha = lightIsOn
        case .yellow:
            redSign.alpha = lightIsOff
            yellowSign.alpha=lightIsOff
            currentLight = .green
            yellowSign.alpha = lightIsOn
        case .green:
            redSign.alpha = lightIsOff
            yellowSign.alpha = lightIsOff
            currentLight = .red
            greenSign.alpha = lightIsOn
            
        }
    }
    
}

