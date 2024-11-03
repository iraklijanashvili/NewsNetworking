//
//  AuthViewModel.swift
//  homework20
//
//  Created by Imac on 03.11.24.
//
import Foundation

class AuthViewModel {
    private var items: [String] = ["Username", "Password", "Confirm Password"]
    
    var numberOfItems: Int {
        return items.count
    }
    
    func item(at index: Int) -> String {
        return items[index]
    }
}
