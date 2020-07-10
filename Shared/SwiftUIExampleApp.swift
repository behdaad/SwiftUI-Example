//
//  SwiftUIExampleApp.swift
//  Shared
//
//  Created by Behdad Keynejad on 4/16/1399 AP.
//

import SwiftUI

@main
struct SwiftUIExampleApp: App {
    var body: some Scene {
        WindowGroup {
            RideHistoryList(rides: testRides)
                .environmentObject(UserData())
        }
    }
}
