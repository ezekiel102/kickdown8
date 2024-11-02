//
//  FirstKickVC.swift
//  kickdown
//
//  Created by Рустем on 02.11.2024.
//

import UIKit

class FirstKickVC: UIViewController {
    private lazy var rectangle: UIView = {
        rectangle = UIView()
        rectangle.backgroundColor = .blue
        return rectangle
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        view.addSubview(rectangle)
        rectangle.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            rectangle.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            rectangle.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 100),
            rectangle.widthAnchor.constraint(equalToConstant: 100),
            rectangle.heightAnchor.constraint(equalToConstant: 100)
            ])
    }
}
