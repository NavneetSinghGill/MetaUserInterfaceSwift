//
//  ContentView.swift
//  UserInterfaceSwiftNavneet
//
//  Created by Navneet Singh Gill on 2025-02-01.
//

import SwiftUI

struct LocationsView: View {
    let viewModel = LocationsViewViewModel()

    var body: some View {
        NavigationStack {
            VStack {
                LittleLemonLogo()
                    .frame(maxWidth: .infinity)
                    .padding(30)
                
                Text("Please select a location")
                    .padding(.vertical, 10)
                    .frame(maxWidth: .infinity)
                    .background(Color(UIColor.systemGray4))
                
                List(0..<viewModel.locations.count, id: \.self) { index in
                    NavigationLink {
                        ReservationView(location: viewModel.locations[index])
                    } label: {
                        LocationView(location: viewModel.locations[index])
                    }

                }
                .listStyle(.plain)
            }
        }
    }
}

#Preview {
    LocationsView()
}
