//
//  Reservation.swift
//  UserInterfaceSwiftNavneet
//
//  Created by Navneet Singh Gill on 2025-02-02.
//

import Foundation

struct Reservation {
    var location: Location?
    var time: Date?
    var name: String = ""
    var phoneNumber: String = ""
    var email: String = ""
    var specialRequest: String = ""
    
    init() {}
}
