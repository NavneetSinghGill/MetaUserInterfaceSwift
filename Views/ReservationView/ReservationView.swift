//
//  ReservationView.swift
//  UserInterfaceSwiftNavneet
//
//  Created by Navneet Singh Gill on 2025-02-02.
//

import SwiftUI

struct ReservationView: View {
    let location: Location

    var body: some View {
        VStack {
            List {
                LocationView(location: location)
            }
            
            ReservationViewCell(title: "name")
        }
    }
}

struct ReservationViewCell: View {
    let title: String
    let onSubmit: () -> Void = { }
    @State private var text: String = ""

    var body: some View {
        HStack {
            Text(title)
            
            TextField("Please enter the \(title.lowercased())", text: $text)
                .onSubmit {
                    
                }
            
            Divider()
        }
        .padding(.horizontal, 10)
    }
}
