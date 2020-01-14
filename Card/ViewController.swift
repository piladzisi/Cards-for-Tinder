//
//  ViewController.swift
//  Card
//
//  Created by Anna Sibirtseva on 14/01/2020.
//  Copyright © 2020 Anna Sibirtseva. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    private let padding: CGFloat = 50

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        
        let redView = UIView()
        redView.backgroundColor = .red
        redView.heightAnchor.constraint(equalToConstant: 100).isActive = true
        
        let mainView = UIView()
        //mainView.backgroundColor = .white
        mainView.layer.shadowOffset = .zero
        mainView.layer.shadowColor = UIColor.black.cgColor
        mainView.layer.shadowRadius = 10
        mainView.layer.shadowOpacity = 0.4
        mainView.layer.borderColor = UIColor.black.cgColor
        mainView.layer.borderWidth = 2
        
        let yellowView = UIView()
        yellowView.backgroundColor = .yellow
        yellowView.heightAnchor.constraint(equalToConstant: 100).isActive = true
        
        
        let stackView = UIStackView(arrangedSubviews: [redView, mainView, yellowView])
        stackView.distribution = .fill
        stackView.axis = .vertical
        stackView.alignment = .fill
        //stackView.spacing = 15
        
        
        view.addSubview(stackView)
        
        stackView.translatesAutoresizingMaskIntoConstraints = false
        
        
        NSLayoutConstraint.activate([
          stackView.topAnchor.constraint(equalTo: view.topAnchor, constant: padding),
          stackView.leadingAnchor.constraint(
            equalTo: view.leadingAnchor,
            constant: padding),
          stackView.trailingAnchor.constraint(
            equalTo: view.trailingAnchor,
            constant: -padding),
            stackView.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -padding)
          ])
       
    }


}

