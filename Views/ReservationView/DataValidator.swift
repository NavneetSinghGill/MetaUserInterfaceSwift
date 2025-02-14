//
//  DataValidator.swift
//  UserInterfaceSwiftNavneet
//
//  Created by Navneet Singh Gill on 2025-02-02.
//

enum DataValidator {
    case email
    case phoneNumber
    case name
    
    func validate(input: String) -> String? {
        switch self {
        case .email:
            return !input.isEmpty && input.contains("@") ? nil : "Email is invalid"
        case .phoneNumber:
            return !input.isEmpty && input.count == 9 && input.allSatisfy({ ("0"..."9").contains($0) }) ? nil : "Phone number is invalid"
        case .name:
            return !input.isEmpty ? nil : "Name is invalid"
        }
    }
}
