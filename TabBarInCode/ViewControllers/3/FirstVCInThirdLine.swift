//
//  FirstVCInThirdLine.swift
//  TabBarInCode
//
//  Created by Александра Кострова on 14.08.2023.
//

import UIKit

class FirstVCInThirdLine: UIViewController {
    
    private lazy var alertButton = AlertButton(buttonName: .nextScreen) {
        self.showNextScreen(SecondVCInThirdLine())
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "2"
        setAlertMainButton(alertButton)
    }
}
