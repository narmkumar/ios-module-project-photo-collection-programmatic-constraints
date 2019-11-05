//
//  ThemeSelectionViewController.swift
//  PhotoCollection
//
//  Created by Spencer Curtis on 8/2/18.
//  Copyright © 2018 Lambda School. All rights reserved.
//
import UIKit

class ThemeSelectionViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setUpSubviews()
    }

    @objc func selectDarkTheme() {
        themeHelper?.setThemePreferenceToDark()
        dismiss(animated: true, completion: nil)
    }
    
    @objc func selectBlueTheme() {
        themeHelper?.setThemePreferenceToBlue()
        dismiss(animated: true, completion: nil)
    }
    
    var themeHelper: ThemeHelper?
    
    
    func setUpSubviews() {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textAlignment = .center
        label.text = "Choose A Theme"
        view.addSubview(label)
        
        label.topAnchor.constraint(equalTo: view.topAnchor, constant: 100).isActive = true
        label.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        
        let darkButton = UIButton()
        darkButton.translatesAutoresizingMaskIntoConstraints = false
        darkButton.setTitle("Dark", for: .normal)
        darkButton.backgroundColor = .black
        darkButton.layer.cornerRadius = 2
        darkButton.addTarget(self, action: #selector(selectDarkTheme), for: .touchUpInside)
        view.addSubview(darkButton)
        
        darkButton.topAnchor.constraint(equalTo: label.bottomAnchor, constant: 10).isActive = true
        darkButton.leadingAnchor.constraint(equalTo: label.leadingAnchor, constant: 10).isActive = true
        
        let blueButton = UIButton()
        blueButton.translatesAutoresizingMaskIntoConstraints = false
        blueButton.setTitle("Blue", for: .normal)
        blueButton.backgroundColor = .blue
        blueButton.layer.cornerRadius = 2
        blueButton.addTarget(self, action: #selector(selectBlueTheme), for: .touchUpInside)
        view.addSubview(blueButton)
        
        blueButton.topAnchor.constraint(equalTo: label.bottomAnchor, constant: 10).isActive = true
        blueButton.trailingAnchor.constraint(equalTo: label.trailingAnchor, constant: -10).isActive = true
    }
}
