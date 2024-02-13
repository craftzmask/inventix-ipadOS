//
//  SidebarMenuRowView.swift
//  Inventix
//
//  Created by Khanh Chung on 2/11/24.
//

import SwiftUI

struct SidebarMenuRowView: View {
    let option: SidebarMenuOptionModel
    
    var body: some View {
        HStack {
            Image(systemName: option.systemImageName)
            Text(option.title)
        }
    }
}

#Preview {
    SidebarMenuRowView(option: .dashboard)
}
