//
//  MapView.swift
//  SNPSwiftUI
//
//  Created by Behdad Keynejad on 4/9/1399 AP.
//

import SwiftUI
import MapKit

struct MapView: UIViewRepresentable {
    var originCoordinate: CLLocationCoordinate2D
    var destinationCoordinate: CLLocationCoordinate2D

    func makeUIView(context: Context) -> MKMapView {
        MKMapView(frame: .zero)
    }

    func updateUIView(_ uiView: MKMapView, context: Context) {
        let originAnnotation = MKPointAnnotation()
        originAnnotation.coordinate = originCoordinate

        let destinationAnnotation = MKPointAnnotation()
        destinationAnnotation.coordinate = destinationCoordinate

        uiView.isZoomEnabled = false
        uiView.isScrollEnabled = false
        uiView.isUserInteractionEnabled = false

        let annotations = [originAnnotation, destinationAnnotation]
        uiView.removeAnnotations(annotations)
        uiView.showAnnotations(annotations, animated: true)
    }
}

struct MapView_Previews: PreviewProvider {
    static var previews: some View {
        MapView(originCoordinate: testRides[0].originCoordinate, destinationCoordinate: testRides[0].destinationCoordinate)
    }
}
