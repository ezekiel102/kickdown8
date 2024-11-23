//
//  EighthKickVC.swift
//  kickdown
//
//  Created by Рустем on 22.11.2024.
//

import UIKit

class EighthKickVC: UIViewController {
    private lazy var scrollView: UIScrollView = {
        let scrollView = UIScrollView()
        scrollView.backgroundColor = .systemBackground
        return scrollView
    }()
    private lazy var avatar: SparrowImageView = {
        let uiImageView = SparrowImageView()
        let imageConfiguration = UIImage.SymbolConfiguration(pointSize: 36)
        uiImageView.image = UIImage(systemName: "person.crop.circle.fill", withConfiguration: imageConfiguration)?.withRenderingMode(.alwaysTemplate)
        uiImageView.tintColor = .systemGray
        uiImageView.contentMode = .center
        return uiImageView
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(scrollView)
        navigationItem.title = "Avatar"
        navigationController?.navigationBar.prefersLargeTitles = true
    }

    override func viewWillLayoutSubviews() {
        super.viewWillLayoutSubviews()
        scrollView.frame = view.bounds
        scrollView.contentSize.height = 2000
        navigationController?.navigationBar.subviews.forEach({ someSubview in
            if someSubview.subviews.contains(where: { $0 is UILabel }) && !someSubview.subviews.contains(where: { $0 is SparrowImageView }) {
                someSubview.addSubview(avatar)
                avatar.translatesAutoresizingMaskIntoConstraints = false
                NSLayoutConstraint.activate([
                    avatar.heightAnchor.constraint(equalToConstant: 36),
                    avatar.widthAnchor.constraint(equalToConstant: 36),
                    avatar.centerXAnchor.constraint(equalTo: someSubview.trailingAnchor, constant: -34),
                    avatar.centerYAnchor.constraint(equalTo: someSubview.bottomAnchor, constant: -26)
                ])
            }
        })
    }
}

final class SparrowImageView: UIImageView {
    override var alignmentRectInsets: UIEdgeInsets {
        return .zero
    }
}
