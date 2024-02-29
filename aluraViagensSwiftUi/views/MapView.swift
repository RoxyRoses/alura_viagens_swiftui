//
//  MapView.swift
//  aluraViagensSwiftUi
//
//  Created by Jennifer Sarah Salomao on 27/02/24.
//

import SwiftUI
import MapKit

struct MapView: UIViewRepresentable {
    
    var coordenada: CLLocationCoordinate2D
    
    func makeUIView(context: Context) -> some MKMapView {
        return MKMapView(frame: .zero)
    }
    
    func updateUIView(_ uiView: UIViewType, context: Context) {
        let span = MKCoordinateSpan(latitudeDelta: 0.2, longitudeDelta: 0.2)
        let region = MKCoordinateRegion(center: coordenada, span: span)
        uiView.setRegion(region, animated: true)
                                    
    }
   
}

#Preview {
    MapView(coordenada: viagens[0].localizacao)
}
