//
//  User.swift
//
//
//  Created by Александр Семенов on 12.11.2023.
//

import Fluent
import Vapor

final class User: Model, Content {
    
    static let schema = "users"
    
    @ID(key: .id)
    var id: UUID?
    
    @Field(key: "firstName")
    var firstName: String
    
    @Field(key: "lastName")
    var lastName: String
    
    @Field(key: "email")
    var email: String
    
    init() {}
    
    init(id: UUID? = nil, firstName: String, lastName: String, email: String) {
        self.id = id
        self.firstName = firstName
        self.lastName = lastName
        self.email = email
    }
}

