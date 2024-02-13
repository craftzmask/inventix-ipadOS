//
//  ContentView.swift
//  Inventix
//
//  Created by Khanh Chung on 2/11/24.
//

import SwiftUI

struct ContentView: View {
    @State private var optionIds = Set<Int>()

    var body: some View {
        NavigationSplitView {
            List(SidebarMenuOptionModel.allCases, selection: $optionIds) { option in
                SidebarMenuRowView(option: option)
            }
            .navigationSplitViewColumnWidth(220)
            .navigationTitle("Inventix")
            .scrollContentBackground(.hidden)
        } detail: {
            
            switch optionIds.first {
            case 0:
                DashboardView()
            case 1:
                ProductListView()
            default:
                Text("Empty")
            }
            
        }
    }
}

#Preview {
    ContentView()
}
