//
//  FirstVCInThirdLine.swift
//  TabBarInCode
//
//  Created by Александра Кострова on 14.08.2023.
//

import UIKit

class FirstVCInThirdLine: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "2"
        setNextButton(nextVC: SecondVCInThirdLine)
    }
}
