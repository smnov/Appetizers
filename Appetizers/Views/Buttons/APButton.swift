//
//  AddToOrderButton.swift
//  Appetizers
//
//  Created by Александр Семенов on 11.11.2023.
//

import SwiftUI

struct APButton: View {
    
    let text: LocalizedStringKey
    
    var body: some View {
        Button {
            print("text")
        } label: {
            Text(text)
                .font(.title3)
                .fontWeight(.semibold)
                .frame(width: 260, height: 50)
                .background(Color.brandPrimary)
                .foregroundColor(.white)
                .cornerRadius(10)
        }
    }
}
