//
//  File.swift
//  
//
//  Created by Александр Семенов on 06.11.2023.
//

import Fluent

struct CreateDish: AsyncMigration {
    func prepare(on database: Database) async throws {
        try await database.schema("dishes")
            .id()
            .field("name", .string, .required)
            .field("description", .string, .required)
            .field("price", .int, .required)
            .field("calories", .int, .required)
            .field("protein", .int, .required)
            .field("carbs", .int, .required)
            .field("imageURL", .string, .required)
            .create()
    }

    func revert(on database: Database) async throws {
        try await database.schema("dishes").delete()
    }
}
