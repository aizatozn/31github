//
//  SettingsViewViewModel.swift
//  brightsky
//
//  Created by Aizat Ozbekova on 2/12/23.
//

import Foundation

struct SettingsViewViewModel {
    let options: [SettingOption]
}

enum SettingOption: CaseIterable {
    case upgrade
    case privasyPolicy
    case terms
    case contact
    case getHelp
    case rateApp
    
    var title: String {
        switch self {
        case .upgrade:
            return "Upgrade to Pro"
        case .privasyPolicy:
            return "Primasy Policy"
        case .terms:
            return "Terms of Use"
        case .contact:
            return "Contact US"
        case .getHelp:
            return "Get Help"
        case .rateApp:
            return "Rate App!"
        }
    }
}
