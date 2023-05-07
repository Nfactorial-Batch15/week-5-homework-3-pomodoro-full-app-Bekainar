//
//  ViewController.swift
//  Pomodoro
//
//  Created by Bekainar on 06.05.2023.
//

import UIKit

class ViewController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let homeVC = HomeVC()
        let settingsVC = SettingsVC()
        let historyVC = HistoryVC()
        
        self.setViewControllers([homeVC, settingsVC, historyVC], animated: false)
        
        homeVC.title = "Home"
        settingsVC.title = "Settings"
        historyVC.title = "History"
    
        guard let items = self.tabBar.items else { return }
        let images = ["house", "slider.horizontal.3", "doc"]
        
        for x in 0...2 {
            items[x].image = UIImage(systemName: images[x])
        }
        
        self.tabBar.tintColor = .black
    }
}

class HomeVC : UIViewController {
    
    let stackView = UIView()
    
    let label : UILabel = {
        let label = UILabel()
        label.text = "25:00"
        label.textColor = .black
        label.font = .systemFont(ofSize: 44)
        return label
    }()
    
    let label2 : UILabel = {
        let label2 = UILabel()
        label2.text = "Focus on your task"
        label2.textColor = .black
        label2.font = .systemFont(ofSize: 16)
        return label2
    }()
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        
        label.translatesAutoresizingMaskIntoConstraints = false
        label2.translatesAutoresizingMaskIntoConstraints = false
        
        self.view.addSubview(label)
        self.view.addSubview(label2)
        
        NSLayoutConstraint.activate([
            label.centerXAnchor.constraint(equalTo: self.view.centerXAnchor),
            label.centerYAnchor.constraint(equalTo: self.view.centerYAnchor),
            label.widthAnchor.constraint(equalToConstant: 120),
            label.heightAnchor.constraint(equalToConstant: 44),
            
            label2.topAnchor.constraint(equalTo: label.bottomAnchor),
            label2.centerXAnchor.constraint(equalTo: self.view.centerXAnchor),
        ])
    }
}


class SettingsVC : UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .lightGray
    }
}

class HistoryVC : UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .systemBlue
    }
}

