//
//  TabBarController.swift
//  TabBarInCode
//
//  Created by Александра Кострова on 14.08.2023.
//

import UIKit

class TabBarController: UITabBarController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .systemBackground
        
        let firstVC = FirstViewController()
        let secondVC = SecondViewController()
        let thirdVC = ThirdViewController()
        
        viewControllers = [
            generateNavigationController(rootViewController: firstVC,
                                         imageName: "1.square.fill"),
            
            generateNavigationController(rootViewController: secondVC,
                                         imageName: "2.square.fill"),
            
            generateNavigationController(rootViewController: thirdVC,
                                         imageName: "3.square.fill")
        ]
        
        //  index of the controller that starts first when the application starts
        // 0 - firstVC, 1 - secondVC, 2 - thirdVC
        selectedIndex = 1
    }
    
    private func generateNavigationController(rootViewController: UIViewController, imageName: String) -> UIViewController {
        let navigationVC = UINavigationController(rootViewController: rootViewController)
        navigationVC.tabBarItem.image = UIImage(systemName: imageName)
        return navigationVC
    }
}
