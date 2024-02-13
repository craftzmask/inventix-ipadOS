//
//  SaleListView.swift
//  Inventix
//
//  Created by Khanh Chung on 2/11/24.
//

import SwiftUI

struct SaleListView: View {
    private let sales = [
        Sale(
            name: "Olivia Martin",
            email: "olivia.martin@email.com",
            sale: "+$1,999.00"
        ),
        Sale(
            name: "Jackson Lee",
            email: "jackson.lee@email.com",
            sale: "+$39.00"
        ),
        Sale(
            name: "Isabella Nguyen",
            email: "isabella.nguyen@email.com",
            sale: "+$299.00"
        ),
        Sale(
            name: "William Kim",
            email: "will@email.com",
            sale: "+$99.00"
        ),
        Sale(
            name: "Sofia Davis",
            email: "sofia.davis@email.com",
            sale: "+$39.00"
        ),
        Sale(
            name: "Sofia Davis",
            email: "sofia.davis@email.com",
            sale: "+$39.00"
        ),
        Sale(
            name: "Sofia Davis",
            email: "sofia.davis@email.com",
            sale: "+$39.00"
        )
    ]
    
    var body: some View {
        VStack(alignment: .leading) {
            Text("Recent Sales")
                .fontWeight(.bold)
                .padding([.bottom], 1)
            Text("You made 265 sales this month.")
                .font(.subheadline)
                .foregroundStyle(.gray)
            
            ScrollView {
                VStack(alignment: .leading, spacing: 5) {
                    ForEach(sales) { sale in
                        SaleItemView(sale)
                    }
                }
                .padding(.top, 10)
            }
        }
        .padding(20)
        .background(
            RoundedRectangle(cornerRadius: 10).strokeBorder(.gray.opacity(0.5), lineWidth: 2)
        )
    }
}

struct SaleItemView: View {
    let sale: Sale
    
    init(_ sale: Sale) {
        self.sale = sale
    }
    
    var body: some View {
        HStack {
            Image(systemName: "person.crop.circle")
                .font(.largeTitle)
                .imageScale(.large)
                .opacity(0.5)
            
            VStack(alignment: .leading) {
                Text(sale.name)
                    .fontWeight(.bold)
                Text(sale.email)
                    .font(.subheadline)
                    .foregroundStyle(.gray)
            }
            Spacer()
            Text(sale.sale)
                .foregroundStyle(.green.opacity(0.9))
        }
    }
}

struct Sale: Identifiable {
    let name: String
    let email: String
    let sale: String
    var id: UUID
    
    init(name: String, email: String, sale: String) {
        self.name = name
        self.email = email
        self.sale = sale
        self.id = UUID()
    }
}

#Preview {
    SaleListView()
}
