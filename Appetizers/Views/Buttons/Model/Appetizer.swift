//
//  Appetizer.swift
//  Appetizers
//
//  Created by Александр Семенов on 07.11.2023.
//

import Foundation

struct Appetizer: Decodable, Identifiable {
    let id: String
    let name: String
    let description: String
    let price: Double
    let imageURL: String
    let calories: Int
    let protein: Int
    let carbs: Int
}





