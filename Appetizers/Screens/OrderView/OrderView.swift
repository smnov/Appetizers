//
//  OrderView.swift
//  Appetizers
//
//  Created by Александр Семенов on 04.11.2023.
//

import SwiftUI

struct OrderView: View {
    
    @EnvironmentObject var order: Order

    var body: some View {
        NavigationView {
            ZStack {
                VStack {
                    List {
                        ForEach(order.items) { appetizer in
                            AppetizerCell(appetizer: appetizer)
                        }
                            .onDelete(perform: deleteItems)
                    }
                    .listStyle(PlainListStyle())
                    
                    Spacer()
                    Button {
                        
                    } label: {
                        APButton(text:"\(order.totalPrice, specifier: "%.2f") - Place Order")
                    }
                        .padding(20)
                }
                
                if order.items.isEmpty {
                    EmptyState()
                }
            }
            .navigationTitle("Orders")
        }
    }
    
    func deleteItems(at offsets: IndexSet) {
        order.items.remove(atOffsets: offsets)
    }
}

#Preview {
    OrderView()
}
