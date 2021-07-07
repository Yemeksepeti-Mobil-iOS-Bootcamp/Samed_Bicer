//
//  FirstPageVC.swift
//  Week-3
//
//  Created by Samed Biçer on 7.07.2021.
//

import UIKit

class FirstPageVC: UIViewController {

    let customView = EmptyStateView(message: "Welcome to our adventure!", image: "welcome_cats")

    override func viewDidLoad() {
        super.viewDidLoad()
        configure()
    }

    private func configure() {
        configureCustomStateView()
    }

    func configureCustomStateView() {
        view.addSubview(customView)
        customView.translatesAutoresizingMaskIntoConstraints = false

        NSLayoutConstraint.activate([
            customView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            customView.centerYAnchor.constraint(equalTo: view.centerYAnchor)
        ])
    }
}
