//
//  AlertButton.swift
//  TabBarInCode
//
//  Created by Александра Кострова on 14.08.2023.
//

import UIKit

class AlertButton: UIButton {
    
    enum ButtonName {
        case nextScreen
        case lastScreen
    }
    
    var action: (() -> Void)?
    
    init(buttonName: ButtonName, action: @escaping () -> Void) {
        super.init(frame: .zero)
        
        setTitleColor(.label, for: .normal)
        backgroundColor = #colorLiteral(red: 0.4745098054, green: 0.8392156959, blue: 0.9764705896, alpha: 1)
        titleLabel?.font = .systemFont(ofSize: 30.0)
        titleLabel?.textAlignment = .center
        contentVerticalAlignment = .center
        contentHorizontalAlignment = .center
        layer.cornerRadius = 10.0
        
        self.action = action
        
        switch buttonName {
        case .nextScreen:
            setTitle("Next", for: .normal)
        case .lastScreen:
            setTitle("Push me", for: .normal)
        }
        addTarget(self, action: #selector(buttonTapped), for: .touchUpInside)
    }
    
    @objc private func buttonTapped() {
        action?()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

