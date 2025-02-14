//
//  MainView.swift
//  UserInterfaceSwiftNavneet
//
//  Created by Navneet Singh Gill on 2025-02-01.
//

import SwiftUI

struct MainView: View {
    @State private var isOn = false
    
    var body: some View {
        NavigationStack {
            TabView {
                LocationsView()
                    .tabItem {
                        Label("Locations", systemImage: "location")
                    }
                ReservationView(location: .init(city: "C", location: "L", contactNumber: "C"))
                    .tabItem {
                        Label("Reservation", systemImage: "book")
                    }
            }
        }
    }
}
