//
//  SidebarMenuOptionModel.swift
//  Inventix
//
//  Created by Khanh Chung on 2/11/24.
//

import Foundation

enum SidebarMenuOptionModel: Int, CaseIterable {
    case dashboard
    case products
    case notifications
    case reports
    case profile
    case settings
    case logout
    
    var title: String {
        switch self {
        case .dashboard:
            "Dashboard"
        case .products:
            "Products"
        case .notifications:
            "Notifications"
        case .reports:
            "Reports"
        case .settings:
            "Settings"
        case .profile:
            "Profile"
        case .logout:
            "Logout"
        }
    }
    
    var systemImageName: String {
        switch self {
        case .dashboard:
            "square.grid.2x2"
        case .products:
            "shippingbox"
        case .notifications:
            "bell"
        case .settings:
            "gearshape"
        case .reports:
            "chart.line.uptrend.xyaxis"
        case .profile:
            "person.crop.circle"
        case .logout:
            "rectangle.portrait.and.arrow.right"
        }
    }
}

extension SidebarMenuOptionModel: Identifiable {
    var id: Int { rawValue }
}
