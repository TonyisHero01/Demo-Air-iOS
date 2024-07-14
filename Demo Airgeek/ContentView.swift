//
//  ContentView.swift
//  Demo Airgeek
//
//  Created by Wang Yidong on 11.03.2024.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationStack{
            VStack {
                NavigationLink(destination: KitchenPage()) {
                    Text("Kitchen")
                        .font(.title2)
                }
                .foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
                .cornerRadius(12)
                NavigationLink(destination: LivingRoomPage()) {
                    Text("Living Room")
                        .font(.title2)
                }
                NavigationLink(destination: BedRoomPage()) {
                    Text("Bedoom")
                        .font(.title2)
                }
                Spacer()
            }
            .navigationTitle("Devices")
            
        }
        
    }
}

#Preview {
    ContentView()
}
