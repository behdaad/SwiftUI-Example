//
//  RideHistory.swift
//  SNPSwiftUI
//
//  Created by Behdad Keynejad on 4/9/1399 AP.
//

import SwiftUI

struct RideHistoryList: View {
    var rides: [Ride]
    @EnvironmentObject var userData: UserData
    
    var body: some View {
        NavigationView {
            List {
                VStack(alignment: .center) {
                    Image("rideHistoryCar")
                    
                    HStack {
                        Spacer()
                        VStack {
                            Text("\(userData.hoursWithSnapp)")
                            Text("hours")
                        }
                        Divider()
                        VStack {
                            Text("\(userData.kmsWithSnapp)")
                            Text("KMs")
                        }
                        Divider()
                        VStack {
                            Text("\(userData.tripsWithSnapp)")
                            Text("trips")
                        }
                        Spacer()
                    }
                }
                ForEach(rides) { ride in
                    NavigationLink(destination: RideHistoryDetail(ride: ride)) {
                        RideHistoryRow(ride: ride)
                    }
                }
            }
        }
        .navigationTitle("Ride History")
    }
}

struct RideHistoryList_Previews: PreviewProvider {
    static var previews: some View {
        RideHistoryList(rides: testRides)
    }
}
