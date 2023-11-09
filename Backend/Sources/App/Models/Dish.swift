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
    
    @Field(key: "imageURL")
    var imageURL: String
    
    @Field(key: "price")
    var price: Int
    
    @Field(key: "protein")
    var protein: Int
    
    @Field(key: "calories")
    var calories: Int
    
    @Field(key: "carbs")
    var carbs: Int
    
    @Field(key: "name")
    var name: String
    
    init() {}
    
    init(id: UUID? = nil, description: String, name: String, price: Int, protein: Int, calories: Int, carbs: Int, imageURL: String) {
        self.id = id
        self.name = name
        self.description = description
        self.price = price
        self.protein = protein
        self.calories = calories
        self.carbs = carbs
        self.imageURL = imageURL
    }
    
}
