//
//  User.swift
//  Appetizers
//
//  Created by Александр Семенов on 12.11.2023.
//

import Foundation

struct User: Codable {
    var firstName = ""
    var lastName = ""
    var email = ""
    var birtDate = Date()
    var extraNapkins = false
    var frequentRefills = false
}
