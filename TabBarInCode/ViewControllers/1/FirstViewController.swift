//
//  ViewController.swift
//  TabBarInCode
//
//  Created by Александра Кострова on 14.08.2023.
//

import UIKit

class FirstViewController: UIViewController {
    
    private lazy var alertButton = AlertButton(buttonName: .lastScreen, action: showLastScreenAlert)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "1"
        setAlertMainButton(alertButton)
    }
}

