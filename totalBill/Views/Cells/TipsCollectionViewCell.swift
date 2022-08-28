//
//  TipsCollectionViewCell.swift
//  totalBill
//
//  Created by Sergey Pavlov on 26.08.2022.
//

import UIKit
class TipsCollectionViewCell: UICollectionViewCell {
    let percentLabel: UILabel = {
        let label = UILabel()
        label.text = "10%"
        label.textAlignment = .center
        label.textColor = .black
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    override var isSelected: Bool {
        didSet {
            if isSelected {
                layer.borderWidth = 3
                layer.borderColor = UIColor.purple.cgColor
            } else {
                layer.borderWidth = 0
            }
        }
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        setupView()
        setConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        
        percentLabel.font = UIFont(name: "Avenir Next Bold", size: frame.height/3.4)
        
    }
    func setupView() {
        backgroundColor = .white
        layer.cornerRadius = 10
        addSubview(percentLabel)
    }
    
    func setConstraints() {
        NSLayoutConstraint.activate([
            percentLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 2),
            percentLabel.trailingAnchor.constraint(equalTo: trailingAnchor, constant: 2),
            percentLabel.centerYAnchor.constraint(equalTo: centerYAnchor)
        ])
    }
}
