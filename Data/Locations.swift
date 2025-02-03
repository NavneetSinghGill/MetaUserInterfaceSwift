//
//  Location.swift
//  UserInterfaceSwiftNavneet
//
//  Created by Navneet Singh Gill on 2025-02-02.
//
import SwiftUI

public struct Locations: Identifiable {
    public var id = UUID()
    
    let data = [
        Location(city: "Las Vegas", location: "Downtown", contactNumber: "(111) 111-1111"),
        Location(city: "Las Angeles", location: "North Hollywood", contactNumber: "(222) 222-2222"),
        Location(city: "Las Angeles", location: "Venice", contactNumber: "(333) 333-3333"),
        Location(city: "Nevada", location: "Venice", contactNumber: "(444) 444-4444"),
        Location(city: "San francisco", location: "North Beach", contactNumber: "(555) 555-5555"),
        Location(city: "San francisco", location: "Union Square", contactNumber: "(666) 666-6666")
    ]
}
