//
//  HomeActivateCellConfigurator.swift
//  ENA
//
//  Created by Tikhonov, Aleksandr on 04.05.20.
//  Copyright © 2020 SAP SE. All rights reserved.
//

import UIKit

final class HomeActivateCellConfigurator: CollectionViewCellConfigurator {
    
    private var isActivated = false
    
    init(isActivated: Bool) {
        self.isActivated = isActivated
    }
    
    // MARK: Configuring a Cell
    func configure(cell: ActivateCollectionViewCell) {
        
        var iconImage: UIImage? = isActivated ? UIImage(named: "UmfeldaufnahmeAktiv_Primary1") : UIImage(named: "UmfeldaufnahmeNichtAktiv_Primary1")
        let iconColor: UIColor = isActivated ? UIColor.preferredColor(for: .tintColor) : UIColor.preferredColor(for: .brandRed)
        iconImage = iconImage?.withTintColor(iconColor)
        
        cell.iconImageView.image = iconImage
        cell.titleTextView.text = AppStrings.Home.activateTitle
        cell.chevronImageView.image = UIImage(systemName: "chevron.right")
		setupAccessibility(for: cell)
    }
	
	func setupAccessibility(for cell: ActivateCollectionViewCell) {
		cell.titleTextView.accessibilityIdentifier = Accessibility.StaticText.homeActivateTitle
	}
}
