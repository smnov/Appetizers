//
//  EmptyState.swift
//  Appetizers
//
//  Created by Александр Семенов on 13.11.2023.
//

import SwiftUI

struct EmptyState: View {
    var body: some View {
        ZStack {
            Color(.systemBackground)
                .edgesIgnoringSafeArea(.all)
            VStack {
                Image("empty state")
                    .resizable()
                    .scaledToFit()
                    .frame(height: 300)
                Text("Your order list is empty")
                    .fontWeight(.semibold)
                    .foregroundColor(.secondary)
            }
            .offset(y: -50)
            
        }
    }
}

#Preview {
    EmptyState()
}
