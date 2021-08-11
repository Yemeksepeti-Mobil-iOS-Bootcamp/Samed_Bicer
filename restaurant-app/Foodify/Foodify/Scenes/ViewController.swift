//
//  ViewController.swift
//  Foodify
//
//  Created by Samed Biçer on 8.08.2021.
//

import UIKit
import FoodifyAPI

class ViewController: UIViewController {

    private let testView = BasicTableRowView()

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white

        configure()
    }

    private func configure() {
        view.addSubview(testView)
        testView.translatesAutoresizingMaskIntoConstraints = false

        let model = BasicTableRowViewUIModel(leadingText: "Tomato Salad", trailingText: "$10", isBigText: false)
        testView.setup(with: model)

        NSLayoutConstraint.activate([
            testView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 40),
            testView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            testView.widthAnchor.constraint(equalToConstant: view.frame.size.width - 40),
//            testView.heightAnchor.constraint(equalToConstant: view.frame.size.width / 3),
        ])
    }

}

