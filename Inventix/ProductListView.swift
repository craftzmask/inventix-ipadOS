//
//  ProductListView.swift
//  Inventix
//
//  Created by Khanh Chung on 2/11/24.
//

import SwiftUI

struct ProductListView: View {
    @State private var searchText = ""

    @State private var products = [
        Product(name: "Solid Lapel Neck Blouse", category: "Clothing", sku: "TS38790", price: 24, isAvailable: true),
        Product(name: "Point Toe Heeled Pumps", category: "Shoes", sku: "TS38843", price: 56, isAvailable: true),
        Product(name: "Crop Tank Top", category: "Clothing", sku: "TS77545", price: 19, isAvailable: true),
        Product(name: "Minimalist Falp Chain Bag", category: "Bag", sku: "TS00213", price: 19, isAvailable: false),
        Product(name: "Solid Lapel Neck Blouse", category: "Clothing", sku: "TS38790", price: 24, isAvailable: true),
        Product(name: "Point Toe Heeled Pumps", category: "Shoes", sku: "TS38843", price: 56, isAvailable: true),
        Product(name: "Crop Tank Top", category: "Clothing", sku: "TS77545", price: 19, isAvailable: false),
        Product(name: "Minimalist Falp Chain Bag", category: "Bag", sku: "TS00213", price: 19, isAvailable: false),
    ]
    
    var body: some View {
        let currencyStyle = Decimal.FormatStyle.Currency(code: "USD")
    
        NavigationStack {
            Table(products) {
                TableColumn("Product Name", value: \.name)
                    .width(360)
                TableColumn("Category", value: \.category)
                TableColumn("SKU", value: \.sku)
                TableColumn("Price") { product in
                    Text(product.price, format: currencyStyle)
                }
                TableColumn("Status") { product in
                    if product.isAvailable {
                        Text("In stock")
                            .foregroundStyle(.white)
                            .frame(width: 120, height: 32)
                            .background(RoundedRectangle(cornerRadius: 8).fill(.green))
                    } else {
                        Text("Out of stock")
                            .foregroundStyle(.white)
                            .frame(width: 120, height: 32)
                            .background(RoundedRectangle(cornerRadius: 8).fill(.red))
                    }
                }
            }
            .navigationTitle("Products")
            .searchable(text: $searchText)
        }
    }
}

struct Product: Identifiable {
    let name: String
    let category: String
    let sku: String
    let price: Decimal
    var isAvailable: Bool
    
    let id = UUID()
}

#Preview {
    ProductListView()
}
