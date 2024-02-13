//
//  DashboardView.swift
//  Inventix
//
//  Created by Khanh Chung on 2/11/24.
//

import SwiftUI

struct DashboardView: View {
    var body: some View {
        VStack(alignment: .leading) {
            Text("Dashboard")
                .font(.largeTitle)
                .fontWeight(.bold)
            HStack {
                KPIView(
                    title: "Total Revenue",
                    symbol: "dollarsign",
                    value: "$45,231.89",
                    subtitle: "+20.1% from last month"
                )
                KPIView(
                    title: "Subscriptions",
                    symbol: "person.2",
                    value: "+2350",
                    subtitle: "+180.1% from last month"
                )
                KPIView(
                    title: "Sales",
                    symbol: "creditcard",
                    value: "+12,234",
                    subtitle: "+19% from last month"
                )
                KPIView(
                    title: "Active Now",
                    symbol: "waveform.path.ecg",
                    value: "+573",
                    subtitle: "+201 since last hour"
                )
            }
            
            HStack(alignment: .top) {
                OverviewChartView()
                SaleListView()
            }
        }
        .padding(.horizontal)
    }
}

#Preview {
    DashboardView()
}
