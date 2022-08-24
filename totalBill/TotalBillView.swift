//
//  TotalBillView.swift
//  totalBill
//
//  Created by Sergey Pavlov on 24.08.2022.
//

import Foundation
import UIKit

class TotalBillView: UIView {
   
    let titleLabel: UILabel = {
        let label = UILabel()
        label.text = "Total Bill"
        label.textColor = #colorLiteral(red: 0.6000000238, green: 0.6000000238, blue: 0.6000000238, alpha: 1)
        label.font = UIFont(name: "Avenir Next", size: 14)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    let summTextField: UITextField = {
        let textField = UITextField()
        textField.translatesAutoresizingMaskIntoConstraints = false
        textField.backgroundColor = #colorLiteral(red: 0.1764705926, green: 0.4980392158, blue: 0.7568627596, alpha: 1)
        return textField
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        setupView()
        setConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setupView() {
        translatesAutoresizingMaskIntoConstraints = false
        
        addSubview(titleLabel)
        addSubview(summTextField)
    }
    
    func setConstraints() {
        NSLayoutConstraint.activate([
            titleLabel.topAnchor.constraint(equalTo: topAnchor, constant: 0),
            titleLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 5),
            
            summTextField.topAnchor.constraint(equalTo: titleLabel.bottomAnchor, constant: 2),
            summTextField.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 0),
            summTextField.trailingAnchor.constraint(equalTo: trailingAnchor, constant: 0),
            summTextField.heightAnchor.constraint(equalToConstant: 100)

        ])
    }
    
}
