//
//  FirstVCInSecondLine.swift
//  TabBarInCode
//
//  Created by Александра Кострова on 14.08.2023.
//

import UIKit

class FirstVCInSecondLine: UIViewController {
    
    private lazy var alertButton = AlertButton(buttonName: .lastScreen, action: showLastScreenAlert)

    override func viewDidLoad() {
        super.viewDidLoad()
        title = "2"
        setAlertMainButton(alertButton)
    }
}
