//
//  ThirdViewController.swift
//  TabBarInCode
//
//  Created by Александра Кострова on 14.08.2023.
//

import UIKit

class ThirdViewController: UIViewController {
    
    private lazy var alertButton = AlertButton(buttonName: .nextScreen) {
        self.showNextScreen(FirstVCInThirdLine())
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "1"
        setAlertMainButton(alertButton)
    }
}
