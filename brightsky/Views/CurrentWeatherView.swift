//
//  CurrentWeatherView.swift
//  brightsky
//
//  Created by Aizat Ozbekova on 29/11/23.
//

import UIKit

final class CurrentWeatherView: UIView {
    
    private let collectionView: UICollectionView?

    override init(frame: CGRect) {
        super.init(frame: frame)
        backgroundColor = .systemBackground
        translatesAutoresizingMaskIntoConstraints = false
        
        createCollectionView()
    }
    
    required init?(coder: NSCoder) {
        fatalError()
    }
    
    public func reload() {
        
    }
    
    private func createCollectionView() {
        let layout = UICollectionViewCompositionalLayout { sectionIndex, _ in
            return self.layout(for: sectionIndex)
        }
        let collectionView = UICollectionView(frame: .zero, collectionViewlayout: layout)
        collectionView.translatesAutoresizingMaskIntoConstraints = false
        self.collectionView = collectionView
    }
    
    private func layout(for: section: Int) -> NSCollectionLayoutSection {
        
    }
}
