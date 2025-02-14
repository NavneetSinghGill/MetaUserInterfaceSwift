//
//  ReservationView.swift
//  UserInterfaceSwiftNavneet
//
//  Created by Navneet Singh Gill on 2025-02-02.
//

import SwiftUI

struct ReservationView: View {
    let location: Location
    @State var reservation = Reservation()
    @State var specialRequest: String = ""
    @State var isAlertPresented: Bool = false
    @State var alertBody: String = ""
    
    var body: some View {
        VStack {
            LocationView(location: location)
            Divider()
            
            Form {
                ReservationViewCell(title: "Name") { name in
                    reservation.name = name
                }
                ReservationViewCell(title: "Phone") { phoneNumber in
                    reservation.phoneNumber = phoneNumber
                }
                ReservationViewCell(title: "Email") { email in
                    reservation.email = email
                }
            }
            
            TextField("Please add any special request (optional)", text: $specialRequest)
                .padding(10)
                .clipShape(Capsule())
                .background {
                    RoundedRectangle(cornerRadius: 5)
                        .stroke(Color(UIColor.systemGray4), lineWidth: 2)
                }

            Button {
                isAlertPresented = !isReservationValid()
            } label: {
                Text("Confirm registration")
            }
            .padding(10)
            .frame(maxWidth: .infinity)
            .background(Color(UIColor.systemGray4))
            .clipShape(.rect(cornerSize: .init(width:  Int.max, height: 0)))
            
        }
        .padding()
        .alert("ERROR",
               isPresented: $isAlertPresented,
               actions: {},
               message: {
            Text(alertBody)
        })
    }
    
    func isReservationValid() -> Bool {
        alertBody = ""
        
        if let error = DataValidator.name.validate(input: reservation.name) {
            alertBody = alertBody.isEmpty ? error : "\(alertBody)\n\(error)"
        }
        if let error = DataValidator.phoneNumber.validate(input: reservation.phoneNumber) {
            alertBody = alertBody.isEmpty ? error : "\(alertBody)\n\(error)"
        }
        if let error = DataValidator.email.validate(input: reservation.email) {
            alertBody = alertBody.isEmpty ? error : "\(alertBody)\n\(error)"
        }

        return alertBody.isEmpty
    }
}

struct ReservationViewCell: View {
    let title: String
    let onSubmit: (String) -> Void
    
    @State private var text: String = ""

    var body: some View {
        HStack {
            Text(title + ":\t")
            TextField("Please enter the \(title.lowercased())", text: $text)
            .onSubmit {
                onSubmit(text)
            }
        }
        .padding(.horizontal, 10)
    }
}
