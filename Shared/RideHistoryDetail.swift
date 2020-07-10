//
//  RideHistoryDetail.swift
//  SwiftUIExample
//
//  Created by Behdad Keynejad on 4/16/1399 AP.
//

import SwiftUI

struct RideHistoryDetail: View {
    var ride: Ride
    
    @State var zoomed = false
    
    var body: some View {
        VStack {
            
            Image("driver")
                .resizable()
                .aspectRatio(contentMode: zoomed ? .fill : .fit)
                .onTapGesture {
                    withAnimation {
                        zoomed.toggle()
                    }
                }
            Spacer(minLength: 0)
            
            if !zoomed {
                HStack {
                    Spacer()
                    Text("Ride Receipt")
                    Spacer()
                }
                .padding(.all)
                .font(.headline)
                .background(Color.red)
                .foregroundColor(.white)
                .transition(.move(edge: .bottom))
            }
        }
        .navigationTitle("Ride detail")
        .edgesIgnoringSafeArea(.bottom)
    }
}

struct RideHistoryDetail_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            RideHistoryDetail(ride: testRides[0])
            RideHistoryDetail(ride: testRides[0])
        }
    }
}

struct ExtractedView: View {
    var body: some View {
        Spacer(minLength: 0)
    }
}
