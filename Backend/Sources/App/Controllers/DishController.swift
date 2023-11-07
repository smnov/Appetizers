//
//  File.swift
//  
//
//  Created by Александр Семенов on 06.11.2023.
//

import Fluent
import Vapor

struct DishController: RouteCollection {
    func boot(routes: Vapor.RoutesBuilder) throws {
        let dishes = routes.grouped("dishes")
        dishes.get(use: index)
        dishes.post(use: create)
    }
    func index(req: Request) async throws -> [Dish] {
        try await Dish.query(on: req.db).all()
    }
    
    func create(req: Request) async throws -> Dish {
        let dish = try req.content.decode(Dish.self)
        try await dish.save(on: req.db)
        return dish
    }
}

