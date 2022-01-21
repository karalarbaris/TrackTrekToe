//
//  WorldView.swift
//  TrackTrekToe
//
//  Created by Baris Karalar on 20.01.2022.
//

import MapKit
import SwiftUI

struct WorldView: View {
    
    @EnvironmentObject var locations: Locations
    
    @State var region = MKCoordinateRegion(
        center: CLLocationCoordinate2D(latitude: Locations().primary.latitude, longitude: Locations().primary.longitude),
        span: MKCoordinateSpan(latitudeDelta: 40, longitudeDelta: 40))
    
    var body: some View {
        Map(coordinateRegion: $region, annotationItems: locations.places) { location in
            MapAnnotation(coordinate: CLLocationCoordinate2D(latitude: location.latitude, longitude: location.longitude)) {
                NavigationLink(destination: ContentView(location: location)) {
                    Image(location.country)
                        .resizable()
                        .cornerRadius(10)
                        .frame(width: 80, height: 40)
                        .shadow(radius: 3)
                }
                
            }
        }
        .navigationTitle("Locationssssss")
    }
}

struct WorldView_Previews: PreviewProvider {
    static var previews: some View {
        WorldView()
    }
}
