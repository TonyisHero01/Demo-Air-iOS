//
//  KitchenPage.swift
//  Demo Airgeek
//
//  Created by Wang Yidong on 25.04.2024.
//

import SwiftUI

struct KitchenPage: View {
    @State private var isSettingsPageActive = false
    @State private var isAdvancedSettingsPageActive = false
    
    var body: some View {
        NavigationStack {
            VStack {
                NavigationLink(destination: DataPage()) {
                    Text("Data")
                        .font(.title2)
                }
                NavigationLink(destination: StatusPage()) {
                    Text("Status")
                        .font(.title2)
                }
                NavigationLink(destination: SettingsPage()) {
                    Text("Settings")
                        .font(.title2)
                }
                NavigationLink(destination: AdvancedSettingsPage()) {
                    Text("Advanced Settings")
                        .font(.title2)
                }
                NavigationLink(destination: RequestSupportPage()) {
                    Text("Request Support")
                        .font(.title2)
                }
                NavigationLink(destination: EmptyView()) {
                    Text("Remove Device")
                        .font(.title2)
                        .foregroundColor(.red)
                }

                Spacer()
            }
            .navigationTitle("Kitchen")
            .toolbar {
                ToolbarItem(placement: .primaryAction) {
                    Menu {
                        Button(action: {
                            isSettingsPageActive = true
                        }) {
                            Text("Settings")
                            Image(systemName: "gearshape")
                        }
                        Divider()
                        Button(action: {
                            isAdvancedSettingsPageActive = true
                        }) {
                            Text("Advanced Settings")
                            Image(systemName: "gear")
                        }
                    } label: {
                        Label("more", systemImage: "ellipsis.circle")
                    }
                }
            }
            .navigationDestination(isPresented: $isSettingsPageActive) {
                SettingsPage()
            }
            .navigationDestination(isPresented: $isAdvancedSettingsPageActive) {
                AdvancedSettingsPage()
            }
        }
    }
}

#Preview {
    KitchenPage()
}
