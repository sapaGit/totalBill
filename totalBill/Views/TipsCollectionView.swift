//
//  TipsCollectionView.swift
//  totalBill
//
//  Created by Sergey Pavlov on 26.08.2022.
//

import UIKit

class TipsCollectionView: UICollectionView {
    
    var flowLayout = UICollectionViewFlowLayout()
    
    override init(frame: CGRect, collectionViewLayout layout: UICollectionViewLayout) {
        super.init(frame: .zero, collectionViewLayout: flowLayout)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setupView() {
        delegate = self
        dataSource = self
    }
}   

extension TipsCollectionView: UICollectionViewDelegate {
    
}

extension TipsCollectionView: UICollectionViewDataSource {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 4
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as? TipsCollectionViewCell else { return UICollectionViewCell() }
        
        return cell
    }
    
    
}
