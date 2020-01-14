//
//  ViewController.swift
//  Card
//
//  Created by Anna Sibirtseva on 14/01/2020.
//  Copyright © 2020 Anna Sibirtseva. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    private let padding: CGFloat = 30
    
    let bottomBarView = HomeBottomControlsStackView()
    let topBarView = TopNavigationStackView()
    let mainView = UIView()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        setupLayout()
        mainView.backgroundColor = .cyan
    }
    
    //MARK : - Setup Layout
    
    fileprivate func setupLayout() {
        let mainStackView = UIStackView(arrangedSubviews: [topBarView, mainView, bottomBarView])
        mainStackView.axis = .vertical
        view.addSubview(mainStackView)
        mainStackView.anchor(top: view.safeAreaLayoutGuide.topAnchor, leading: view.leadingAnchor, bottom: view.safeAreaLayoutGuide.bottomAnchor, trailing: view.trailingAnchor)
        mainStackView.isLayoutMarginsRelativeArrangement = true
       // mainStackView.layoutMargins = .init(top: 0, left: 12, bottom: 0, right: 12)
    }
    
}

