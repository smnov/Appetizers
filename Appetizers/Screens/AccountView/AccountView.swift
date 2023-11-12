//
//  AccountView.swift
//  Appetizers
//
//  Created by Александр Семенов on 04.11.2023.
//

import SwiftUI

struct AccountView: View {
    
    @State private var firstName = ""
    @State private var lastName = ""
    @State private var email = ""
    @State private var birtDate = Date()
    @State private var extraNapkins = false
    @State private var frequentRefills = false
    
    
    var body: some View {
        NavigationView {
            Form {
                Section(header: Text("Personal Info")) {
                    TextField("First Name", text: $firstName)
                    TextField("Last Name", text: $lastName)
                    TextField("Email", text: $email)
                        .keyboardType(.emailAddress)
                        .autocapitalization(.none)
                        .autocorrectionDisabled()
                    DatePicker("Birthday", selection: $birtDate)
                    Button {
                        print("Save changes")
                    } label: {
                        Text("Save Changes")
                    }
                }
                Section(header: Text("Request")) {
                    Toggle("Extra napkins", isOn: $extraNapkins )
                    Toggle("Frequent Refills", isOn: $frequentRefills )
                }
            }
            .navigationTitle("Accounts")
        }
    }
}

#Preview {
    AccountView()
}
