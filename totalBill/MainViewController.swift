//
//  ViewController.swift
//  totalBill
//
//  Created by Sergey Pavlov on 23.08.2022.
//

import UIKit

class MainViewController: UIViewController {

    let titleLabel: UILabel = {
        let label = UILabel()
        label.text = "Total Bill"
        label.textColor = .black
        label.font = UIFont(name: "Avenir Next Bold", size: 40)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    let totalBillView = TotalBillView()
    
    
    let logoImageView: UIImageView = {
       let imageView = UIImageView()
        imageView.image = UIImage(named: "logo")
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()
    
    let descriptionLabel: UILabel = {
        let label = UILabel()
        label.text = "Enter the invoice amount and click \"Calculate\""
        label.textColor = .black
        label.numberOfLines = 0
        label.textAlignment = .center
        label.font = UIFont(name: "Avenir Next Bold", size: 15)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
       
        setupViews()
        setConstraints()
    }
    
    func setupViews() {
        view.backgroundColor = #colorLiteral(red: 0.9764705882, green: 0.9764705882, blue: 0.9764705882, alpha: 1)
        
        view.addSubview(titleLabel)
        view.addSubview(logoImageView)
        view.addSubview(descriptionLabel)
        view.addSubview(totalBillView)
        
    }

}

extension MainViewController {
    func setConstraints() {
        NSLayoutConstraint.activate([
            titleLabel.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 10),
            titleLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            
            logoImageView.topAnchor.constraint(equalTo: titleLabel.bottomAnchor, constant: 10),
            logoImageView.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.5),
            logoImageView.heightAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.3),
            logoImageView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            
            descriptionLabel.topAnchor.constraint(equalTo: logoImageView.bottomAnchor, constant: 15),
            descriptionLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            descriptionLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 10),
            descriptionLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -10),
            
            totalBillView.topAnchor.constraint(equalTo: descriptionLabel.bottomAnchor, constant: 10),
            totalBillView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            totalBillView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
            totalBillView.heightAnchor.constraint(equalToConstant: 150)
        ])
    }
}
