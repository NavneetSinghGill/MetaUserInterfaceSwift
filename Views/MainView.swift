//
//  MainView.swift
//  UserInterfaceSwiftNavneet
//
//  Created by Navneet Singh Gill on 2025-02-01.
//

import SwiftUI

struct MainView: View {
    
    var body: some View {
        TabView {
            Tab("Locations", image: "location") {
                LocationsView()
            }
            Tab("Reservation", image: "book") {
//                ReservationView()
            }
        }
    }
    
}
