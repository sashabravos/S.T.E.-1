//
//  UIViewControllerExtension.swift
//  TabBarInCode
//
//  Created by Александра Кострова on 14.08.2023.
//

import UIKit

extension UIViewController {
    
    public func setFinalButton() {
        let alertButton = AlertButton(buttonName: .lastScreen,
                                           action: showLastScreenAlert)
        setAlertMainButton(alertButton)
    }
    
    public func setNextButton(nextVC: UIViewController) {
        let alertButton = AlertButton(buttonName: .nextScreen) { [weak self] in
            self?.navigationController?.pushViewController(nextVC, animated: true)
        }
        setAlertMainButton(alertButton)
    }
    
    private func setAlertMainButton(_ button: AlertButton) {
        view.addSubview(button)
        button.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            button.widthAnchor.constraint(greaterThanOrEqualToConstant: 153),
            button.heightAnchor.constraint(equalToConstant: 94),
            button.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            button.centerYAnchor.constraint(equalTo: view.centerYAnchor)
        ])
    }
    
    private func showLastScreenAlert() {
        let alertController = UIAlertController(title: "There is a last screen", message: "try to return", preferredStyle: .alert)
        alertController.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
        self.present(alertController, animated: true)
    }
}
