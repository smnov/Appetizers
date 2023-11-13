//
//  CreateUser.swift
//
//
//  Created by Александр Семенов on 12.11.2023.
//

import Fluent

struct CreateUser: AsyncMigration {
    func prepare(on database: Database) async throws {
        try await database.schema("users")
            .id()
            .field("firstName", .string, .required)
            .field("lastName", .string, .required)
            .field("email", .string, .required)
            .create()
    }
    
    func revert(on database: Database) async throws {
        try await database.schema("users").delete()
    }
    
    
}
