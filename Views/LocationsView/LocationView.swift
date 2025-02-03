//
//  LocationView.swift
//  UserInterfaceSwiftNavneet
//
//  Created by Navneet Singh Gill on 2025-02-02.
//

import SwiftUI

struct LocationView: View {

    let location: Location

    var body: some View {
        VStack(alignment: .leading) {
            Text(location.city)
                .font(.title)
            Text(location.location + " - " + location.contactNumber)
                .font(.headline)
                .fontWeight(.medium)
                .foregroundStyle(.gray)
        }
    }
}
