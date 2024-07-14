//
//  StatusPage.swift
//  Demo Airgeek
//
//  Created by Wang Yidong on 25.04.2024.
//

import SwiftUI

struct StatusPage: View {
    var body: some View {
        VStack {
            HStack {
                Spacer()
                Text("Device type:")
                Spacer()
                Text("Airgeek")
                Spacer()
            }
            HStack {
                Spacer()
                Text("Firmware version:")
                Spacer()
                Text("1.0.0")
                Spacer()
            }
            HStack {
                Spacer()
                Text("Serial number:")
                Spacer()
                Text("24-0015-111")
                Spacer()
            }
            HStack {
                Spacer()
                Text("Uptime:")
                Spacer()
                Text("5 months 11 days")
                Spacer()
            }
            HStack {
                Spacer()
                Text("Battery life:")
                Spacer()
                Text("About 8 months")
                Spacer()
            }
            HStack {
                Spacer()
                Text("Measurement count:")
                Spacer()
                Text("10248")
                Spacer()
            }
            Text("device is fully operational")
                .foregroundColor(.green)
            Spacer()
            .navigationTitle("Status")
        }
        
    }
}

#Preview {
    StatusPage()
}
