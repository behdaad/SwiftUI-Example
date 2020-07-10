//
//  UserData.swift
//  SNPSwiftUI
//
//  Created by Behdad Keynejad on 4/16/1399 AP.
//

import Combine

final class UserData: ObservableObject {
    @Published var hoursWithSnapp = 300
    @Published var kmsWithSnapp = 400
    @Published var tripsWithSnapp = 500
}
