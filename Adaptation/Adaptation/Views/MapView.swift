//
//  MapView.swift
//  Adaptation
//
//  Created by Артем Буторин on 02.05.2022.
//

import SwiftUI
import MapKit

struct MapView: View {
    var body: some View {
        VStack {
            Text("Карта сокровищ")
                .lilacTitle()
            Map()
                .edgesIgnoringSafeArea(.all)
        }
        .background(Color("Back"))
    }
}

struct Map: UIViewRepresentable {
    func makeUIView(context: Context) -> MKMapView {
        let mapView = MKMapView()
        mapView.delegate = context.coordinator
        let annotation = MKPointAnnotation()
        annotation.title = "Сокровище"
        annotation.subtitle = "Золото пиратов"
        annotation.coordinate = CLLocationCoordinate2DMake(24.629425, -82.924290)
        mapView.addAnnotation(annotation)
        return mapView
    }
    //
    func updateUIView(_ uiView: MKMapView, context: Context) {
        //24.629425, -82.924290
    }
    
    func makeCoordinator() -> Coordinator {
        Coordinator(self)
    }
    
    class Coordinator: NSObject, MKMapViewDelegate {
        var parent: Map
        
        func mapViewDidChangeVisibleRegion(_ mapView: MKMapView) {
            print(1)
        }
        
        init(_ parent: Map) {
            self.parent = parent
        }
    }
}

struct MapView_Previews: PreviewProvider {
    static var previews: some View {
        MapView()
    }
}
