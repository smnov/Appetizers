//
//  AppetizerDetailView.swift
//  Appetizers
//
//  Created by Александр Семенов on 10.11.2023.
//

import SwiftUI

struct AppetizerDetailView: View {
    
    @Binding var isShowingDetail: Bool
    @EnvironmentObject var order: Order
    
    let appetizer: Appetizer
    
    var body: some View {
        VStack(spacing: 20) {
            AppetizerRemoteImage(urlString: appetizer.imageURL)
                .aspectRatio(contentMode: .fit)
                .frame(width: 300, height: 225)
            Text(appetizer.name)
                .font(.title2)
                .fontWeight(.semibold)
            Text(appetizer.description)
                .multilineTextAlignment(.center)
                .font(.body)
                .padding()
            HStack(spacing: 40) {
                NutritionInfo(title: "Proteins", value: appetizer.protein)
                NutritionInfo(title: "Carbs", value: appetizer.carbs)
                NutritionInfo(title: "Calories", value: appetizer.calories)
            }
            Button {
                order.add(appetizer)
                isShowingDetail = false
            } label: {
                APButton(text: "$\(appetizer.price, specifier: "%.2f") - Add to order")
            }
                .padding()
        }
        .frame(width: 300, height: 525)
        .background(Color(.systemBackground))
        .cornerRadius(12)
        .shadow(radius: 40)
        .overlay(DismissButton(isShowingDetail: $isShowingDetail), alignment: .topTrailing)
    }
}

struct NutritionInfo: View {
    
    let title: String
    let value: Int
    
    var body: some View {
        VStack {
            Text(title)
                .bold()
                .font(.caption)
            Text("\(value)")
                .foregroundColor(.secondary)
                .fontWeight(.semibold)
                .italic()
        }
    }
}
