//
//  SecondVCInThirdLine.swift
//  TabBarInCode
//
//  Created by Александра Кострова on 14.08.2023.
//

import UIKit

class SecondVCInThirdLine: UIViewController {
    
    private lazy var alertButton = AlertButton(buttonName: .lastScreen, action: showLastScreenAlert)

    override func viewDidLoad() {
        super.viewDidLoad()
        title = "3"
        setAlertMainButton(alertButton)
    }
}
