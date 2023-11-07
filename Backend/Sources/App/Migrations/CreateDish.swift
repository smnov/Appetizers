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
            .field("price", .int16, .required)
            .field("calories", .int16, .required)
            .field("protein", .int16, .required)
            .field("carbs", .string, .required)
            .create()
    }

    func revert(on database: Database) async throws {
        try await database.schema("dishes").delete()
    }
}
