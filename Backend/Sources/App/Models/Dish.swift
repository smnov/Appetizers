//
//  File.swift
//  
//
//  Created by Александр Семенов on 06.11.2023.
//

import Fluent
import Vapor

final class Dish: Model, Content {
    
    static let schema = "dishes"
    
    @ID(key: .id)
    var id: UUID?
    
    @Field(key: "description")
    var description: String
    
    @Field(key: "price")
    var price: Int16
    
    @Field(key: "protein")
    var protein: Int16
    
    @Field(key: "calories")
    var calories: Int16
    
    @Field(key: "carbs")
    var carbs: Int16
    
    @Field(key: "name")
    var name: String
    
    init() {}
    
    init(id: UUID? = nil, description: String, name: String, price: Int16, protein: Int16, calories: Int16, carbs: Int16) {
        self.id = id
        self.name = name
        self.description = description
        self.price = price
        self.protein = protein
        self.calories = calories
        self.carbs = carbs
    }
    
}
