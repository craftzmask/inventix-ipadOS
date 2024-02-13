//
//  OverviewChartView.swift
//  Inventix
//
//  Created by Khanh Chung on 2/11/24.
//

import SwiftUI
import Charts

struct OverviewChartView: View {
    var body: some View {
        Chart(data, id: \.month) { item in
            BarMark(
                x: .value("Month", item.month),
                y: .value("Value", item.profit)
            )
        }
        .padding(20)
        .background(
            RoundedRectangle(cornerRadius: 10).strokeBorder(.gray.opacity(0.5), lineWidth: 2)
        )
    }
}

struct ProfitPerMonth {
    var month: String
    var profit: Double
}


let data: [ProfitPerMonth] = [
    .init(month: "Jan", profit: 5500),
    .init(month: "Fen", profit: 3000),
    .init(month: "Mar", profit: 3100),
    .init(month: "Apr", profit: 4600),
    .init(month: "May", profit: 1700),
    .init(month: "Jun", profit: 3200),
    .init(month: "Jul", profit: 1400),
    .init(month: "Aug", profit: 3800),
    .init(month: "Sep", profit: 4300),
    .init(month: "Oct", profit: 3000),
    .init(month: "Nov", profit: 1600),
    .init(month: "Dev", profit: 4500),
]

#Preview {
    OverviewChartView()
}
