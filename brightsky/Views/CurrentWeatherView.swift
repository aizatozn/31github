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
    
    private func layout(for: sectionIndex: Int) -> NSCollectionLayoutSection {
        let section = CurrentWeatherSection.allCases[sectionIndex]
        
        switch section {
        case.current:
            let item = NSCollectionLayoutItem(layoutSize: .init(
                widthDimension: .fractionalWidth(1.0),
                heightDimension: .fractionalHeight(1.0)
            ))
            
            let group = NSCollectionLayoutGroup.vertical(
                layoutSize: .init(widthDimension: .fractionalWidth(1.0), heightDimension: .fractionalWidth(0.75)),
                subitems: [item]
            )
            
            return NSCollectionLayoutSection(group: group)
        case.hourly:
            let item = NSCollectionLayoutItem(layoutSize: .init(
                widthDimension: .fractionalWidth(1.0),
                heightDimension: .fractionalHeight(1.0)
            ))
            
            let group = NSCollectionLayoutGroup.vertical(
                layoutSize: .init(widthDimension: .fractionalWidth(1.0), heightDimension: .fractionalWidth(0.75)),
                subitems: [item]
            )
            
            return NSCollectionLayoutSection(group: group)
        case.daily:
            let item = NSCollectionLayoutItem(layoutSize: .init(
                widthDimension: .fractionalWidth(1.0),
                heightDimension: .fractionalHeight(1.0)
            ))
            
            let group = NSCollectionLayoutGroup.vertical(
                layoutSize: .init(widthDimension: .fractionalWidth(1.0), heightDimension: .fractionalWidth(0.75)),
                subitems: [item]
            )
            
            return NSCollectionLayoutSection(group: group)

        }
    }
}
