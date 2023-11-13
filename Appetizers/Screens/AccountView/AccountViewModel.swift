//
//  AccountViewModel.swift
//  Appetizers
//
//  Created by Александр Семенов on 12.11.2023.
//

import SwiftUI

final class AccountViewModel: ObservableObject {
    
    @Published var user = User()
    
    @Published var alertItem: AlertItem?
    
    var isValidForm: Bool {
        guard !user.firstName.isEmpty && !user.lastName.isEmpty && !user.email.isEmpty else {
            alertItem = AlertContext.incompleteForm
            return false
        }
        
        guard user.email.isValidEmail else {
            alertItem = AlertContext.invalidEmail
            return false
        }
        return true
    }
    
    func saveChanges() {
        guard isValidForm else { return }
        print("Changes have been saved")
    }
}
