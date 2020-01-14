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
        
        let topBarSubviews = [UIColor.gray, UIColor.darkGray, UIColor.black].map { (color) -> UIView in
            let view = UIView()
            view.backgroundColor = color
            return view
        }
        
        let topBarView = UIStackView(arrangedSubviews: topBarSubviews)
        topBarView.distribution = .fillEqually
        topBarView.heightAnchor.constraint(equalToConstant: 100).isActive = true
        
        let mainView = UIView()
        mainView.backgroundColor = .cyan
        mainView.layer.shadowOffset = .zero
        mainView.layer.shadowColor = UIColor.black.cgColor
        mainView.layer.shadowRadius = 10
        mainView.layer.shadowOpacity = 0.4
        mainView.layer.borderColor = UIColor.black.cgColor
        mainView.layer.borderWidth = 2
        
        
        
        let bottomBarSubviews = [UIColor.gray, UIColor.darkGray, UIColor.white, UIColor.black, UIColor.yellow].map { (color) -> UIView in
            let view = UIView()
            view.backgroundColor = color
            return view
        }
        
        let bottomBarView = UIStackView(arrangedSubviews: bottomBarSubviews)
        bottomBarView.distribution = .fillEqually
        bottomBarView.heightAnchor.constraint(equalToConstant: 100).isActive = true
        
        let stackView = UIStackView(arrangedSubviews: [topBarView, mainView, bottomBarView])
        stackView.distribution = .fill
        stackView.axis = .vertical
        stackView.alignment = .fill
        stackView.spacing = 15
        
        
        view.addSubview(stackView)
        
        stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.fillSuperview()
        
        NSLayoutConstraint.activate([
            mainView.leadingAnchor.constraint(equalTo: stackView.leadingAnchor, constant: padding),
            mainView.trailingAnchor.constraint(equalTo: stackView.trailingAnchor, constant: -padding)
        ])
        
    }
    
    
}

