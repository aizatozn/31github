//
//  TabViewController.swift
//  brightsky
//
//  Created by Aizat Ozbekova on 28/11/23.
//

import UIKit

final class TabViewController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let tab1 = WeatherViewController()
        tab1.title = "Weather"
        
        let tab2 = SettingsViewController()
        tab2.title = "Settings"
        
        let nav1 = UINavigationController(rootViewController: tab1)
        let nav2 = UINavigationController(rootViewController: tab2)
            
        nav1.tabBarItem = UITabBarItem(title: "Weather", image: UIImage(systemName: "cloud.sun"), tag: 1)
        nav2.tabBarItem = UITabBarItem(title: "Settings", image: UIImage(systemName: "gear"), tag: 2)

        setViewControllers([
            nav1, nav2,
        ], animated: true)
    }
}

final class HomeViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .yellow

        // Создаем кастомную вьюшку для логотипа
        let logoButton = UIButton(type: .custom)
        logoButton.setImage(UIImage(named: "bilimotLogo"), for: .normal)
        logoButton.contentMode = .scaleAspectFit

        let newWidth: CGFloat = 240.0 // Уменьшьте ширину
        let newHeight = newWidth / logoButton.imageView!.image!.size.width * logoButton.imageView!.image!.size.height
        logoButton.frame = CGRect(x: 0, y: 0, width: newWidth, height: newHeight)

        // Добавляем обработчик нажатия на логотип
        logoButton.addTarget(self, action: #selector(logoButtonTapped), for: .touchUpInside)

        // Устанавливаем логотип в titleView
        navigationItem.titleView = logoButton

        // Создаем кнопку меню (используем SF Symbols)
        let menuButton = UIBarButtonItem(image: UIImage(systemName: "line.horizontal.3"), style: .plain, target: self, action: #selector(menuButtonTapped))
        
        // Устанавливаем кнопку меню в навбар
        navigationItem.rightBarButtonItem = menuButton

        // Настройка размера навбара
        navigationController?.navigationBar.barTintColor = .white
        navigationController?.navigationBar.isTranslucent = false
        navigationController?.navigationBar.barStyle = .default
        navigationController?.navigationBar.setBackgroundImage(UIImage(), for: .default)
        navigationController?.navigationBar.shadowImage = UIImage()
    }

    @objc private func logoButtonTapped() {
        // Обработка нажатия на логотип
    }

    @objc private func menuButtonTapped() {
        // Обработка нажатия кнопки меню
    }
    
    
    
    
    
    
    
}







