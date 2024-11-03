//
//  User.swift
//  homework20
//
//  Created by Imac on 04.11.24.
//


import Foundation

struct User {
    let username: String
    let password: String
    
    // დამატებითი ინფორმაცია მომხმარებლისთვის
    var isLoggedIn: Bool = false
    let createdAt: Date = Date()
    
    // Validation helpers
    var isValidUsername: Bool {
        return username.count >= 4
    }
    
    var isValidPassword: Bool {
        // პაროლი უნდა იყოს მინიმუმ 6 სიმბოლო
        return password.count >= 6
    }
    
    // Custom initializer
    init(username: String, password: String) {
        self.username = username
        self.password = password
    }
}

// MARK: - User Validation
extension User {
    enum ValidationError: Error {
        case invalidUsername
        case invalidPassword
        
        var description: String {
            switch self {
            case .invalidUsername:
                return "Username should be at least 4 characters"
            case .invalidPassword:
                return "Password should be at least 6 characters"
            }
        }
    }
    
    func validate() throws {
        if !isValidUsername {
            throw ValidationError.invalidUsername
        }
        
        if !isValidPassword {
            throw ValidationError.invalidPassword
        }
    }
}
