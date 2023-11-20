//
//  SideMenuViewModel.swift
//  FinanceApp
//
//  Created by Vitaliy Garasymovych on 11/15/23.
//

import Foundation

enum SideMenuViewModel: Int, CaseIterable {
    case profile
    case notifications
    case settings
    case logout
    
    var title: String {
        switch self {
        case .profile: return "Profile"
        case .notifications: return "Notifications"
        case .settings: return "Settings"
        case .logout: return "Logout"
        }
    }
    
    var imageName: String {
        switch self {
        case .profile: return "person"
        case .notifications: return "bell"
        case .settings: return "gear"
        case .logout: return "arrow.left.square"
        }
    }
}
