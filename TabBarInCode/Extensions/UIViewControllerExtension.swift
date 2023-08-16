//
//  UIViewControllerExtension.swift
//  TabBarInCode
//
//  Created by Александра Кострова on 14.08.2023.
//

import UIKit

extension UIViewController {
    
    func setAlertMainButton(_ button: AlertButton) {
        view.addSubview(button)
        button.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            button.widthAnchor.constraint(greaterThanOrEqualToConstant: 153),
            button.heightAnchor.constraint(equalToConstant: 94),
            button.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            button.centerYAnchor.constraint(equalTo: view.centerYAnchor)
        ])
    }
    
    public func showLastScreenAlert() {
        let alertController = UIAlertController(title: "There is a last screen", message: "try to return", preferredStyle: .alert)
        alertController.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
        self.present(alertController, animated: true)
    }
    
    public func showNextScreen(_ nextVC: UIViewController) {
        navigationController?.pushViewController(nextVC, animated: true)
    }
}
