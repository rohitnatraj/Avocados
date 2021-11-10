//
//  SettingsView.swift
//  Avocados
//
//  Created by Natraj, Rohit on 11/8/21.
//

import SwiftUI

struct SettingsView: View {
    // MARK: - Properties
    @State private var enableNotification = true
    @State private var backgroundRefresh = false
    
    var body: some View {
        VStack(alignment: .center, spacing: 0) {
            // HEADER
            VStack(alignment: .center, spacing: 5) {
                Image("avocado")
                    .resizable()
                    .scaledToFit()
                    .padding(.top)
                    .frame(width: 100, height: 100, alignment: .center)
                    .shadow(color: Color("ColorBlackTransparentLight"), radius: 8, x: 0, y: 4)
                
            Text("Avocados".uppercased())
                .font(.system(.title, design: .serif))
                .fontWeight(.bold)
                .foregroundColor(Color("ColorGreenAdaptive"))
                .padding()
            }
            .padding()
            
            Form {
                // Section 1
                Section(header: Text("General Settings")) {
                    Toggle(isOn: $enableNotification) {
                        Text("Enable Notifications")
                    }
                    
                    Toggle(isOn: $backgroundRefresh) {
                        Text("Background Refresh")
                    }
                }
                
                // Section 2
                Section(header: Text("Application")) {
                    if enableNotification {
                        HStack {
                            Text("Product")
                                .foregroundColor(.gray)
                            Spacer()
                            Text("Avocado Recipes")
                        }
                        
                        HStack {
                            Text("Compatability")
                                .foregroundColor(.gray)
                            Spacer()
                            Text("iPhone & iPad")
                        }
                        
                        HStack {
                            Text("Designer")
                                .foregroundColor(.gray)
                            Spacer()
                            Text("Rohit Natraj")
                        }
                        
                        HStack {
                            Text("Website")
                                .foregroundColor(.gray)
                            Spacer()
                            Text("github.com/rohitnatraj/Avocados")
                        }
                        
                        HStack {
                            Text("Version")
                                .foregroundColor(.gray)
                            Spacer()
                            Text("1.0.0")
                        }
                    } else {
                        HStack {
                            Text("Personal Message")
                                .foregroundColor(.gray)
                            Spacer()
                            Text("👍 Happy Coding")
                        }
                    }
                    
                    
                }
                
            }
            
        }
        .frame(maxWidth: 640)
    }
}

struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
    }
}
