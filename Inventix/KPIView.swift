//
//  KPIView.swift
//  Inventix
//
//  Created by Khanh Chung on 2/11/24.
//

import SwiftUI

struct KPIView: View {
    let title: String
    let symbol: String
    let value: String
    let subtitle: String
    
    var body: some View {
        VStack(alignment: .leading, spacing: 10) {
            HStack {
                Text(title)
                Spacer()
                Image(systemName: symbol)
            }
            
            VStack(alignment: .leading) {
                Text(value)
                    .font(.title)
                    .fontWeight(.bold)
                Text(subtitle)
                    .font(.subheadline)
                    .foregroundStyle(.gray)
            }
        }
        .padding(20)
        .background(
            RoundedRectangle(cornerRadius: 10).strokeBorder(.gray.opacity(0.5), lineWidth: 2)
        )
    }
}

#Preview {
    KPIView(
        title: "Total Revenue",
        symbol: "dollarsign",
        value: "$45,231.89",
        subtitle: "+20.1% from last month"
    )
}
