//
//  RideHistoryRow.swift
//  SwiftUIExample
//
//  Created by Behdad Keynejad on 4/16/1399 AP.
//

import SwiftUI
import CoreLocation

struct RideHistoryRow: View {
    var ride: Ride
    
    var body: some View {
        VStack(spacing: 0) {
            HStack {
                Spacer()
                Text(ride.title)
                    .font(.headline)
                    .foregroundColor(Color.white)
                    .padding(.all, 10)
                Spacer()
            }
            .background(ride.isCancelled ? Color.gray : Color.green)
            
            MapView()
                .frame(height: 200)
            
            Spacer()
                .frame(height: 10)
            
            HStack {
                Text("Origin")
                    .font(.footnote)
                    .fontWeight(.semibold)
                    .frame(width: 80, alignment: .leading)
                    .foregroundColor(.blue)
                Text(ride.originAddress)
                    .font(.footnote)
                    .fontWeight(.semibold)
                Spacer()
            }
            
            HStack {
                Text("Destination")
                    .font(.footnote)
                    .fontWeight(.semibold)
                    .frame(width: 80, alignment: .leading)
                    .foregroundColor(.blue)
                Text(ride.destinationAddress)
                    .font(.footnote)
                    .fontWeight(.semibold)
                Spacer()
            }
            
            Spacer()
                .frame(height: 4)
            
            Divider()
            
            Spacer()
                .frame(height: 4)
            
            HStack {
                Text(ride.cost)
                    .font(.subheadline)
                    .fontWeight(.bold)
                    .foregroundColor(.green)
                Spacer()
                Text("Details")
                    .font(.subheadline)
                    .foregroundColor(.green)
            }
        }
        .border(Color.gray, width: 0.5)
        .padding(.all, 10)
    }
}

struct RideHistoryRow_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            RideHistoryRow(ride: testRides[0])
                .previewLayout(.fixed(width: 300, height: 450))
            RideHistoryRow(ride: testRides[1])
                .previewLayout(.fixed(width: 300, height: 450))
        }
    }
}
