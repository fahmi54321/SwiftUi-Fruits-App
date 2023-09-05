//
//  SettingsView.swift
//  SwiftUi Fruits
//
//  Created by Fahmi Aziz on 04/09/23.
//

import SwiftUI

struct SettingsView: View {
    
    // MARK: PROPERTIES
    @Environment(\.dismiss) var presentationMode
    @AppStorage("isOnboarding") var isOnboarding: Bool = false
    
    // MARK: BODY
    var body: some View {
        NavigationView {
            ScrollView (.vertical, showsIndicators: false) {
                VStack(spacing: 20) {
                    
                    // MARK: SECTION 1
                    GroupBox {
                        Divider().padding(.vertical, 4.0)
                        HStack(alignment: .center, spacing: 10) {
                            Image("logo")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 80, height: 80.0)
                                .cornerRadius(9.0)
                            
                            Text("Most fruits are naturally low in fat, sodium, and colories. None have cholesterol. Fruits are sources of many essential nutrients, including potassium, dietary fiber, vitamins, and much more")
                                .font(.footnote)
                        }
                    } label: {
                        SettingsLabelView(labelText: "Fructus", labelImage: "info.circle")
                    }

                    // MARK: SECTION 2
                    GroupBox {
                        Divider().padding(.vertical, 4.0)
                        
                        Text("If you wish, you can restart the application by toggle the switch in this box. That way it starts the onboarding process and you will see the welcome screen again")
                            .padding(.vertical, 8.0)
                            .frame(minHeight: 60.0)
                            .layoutPriority(1)
                            .font(.footnote)
                            .multilineTextAlignment(.leading)
                        
                        Toggle(isOn: $isOnboarding) {
                            if isOnboarding {
                                Text("Restarted".uppercased())
                                    .fontWeight(.bold)
                                    .foregroundColor(.green)
                            } else {
                                Text("Restart".uppercased())
                                    .fontWeight(.bold)
                                    .foregroundColor(.secondary)
                            }
                                
                        }
                        .padding()
                        .background(
                            Color(UIColor.tertiarySystemBackground)
                                .clipShape(RoundedRectangle(cornerRadius: 8.0, style: .continuous))
                        )
                    } label: {
                        SettingsLabelView(labelText: "Customization", labelImage: "paintbrush")
                    }

                    
                    // MARK: SECTION 3
                    GroupBox {
                        SettingsRowView(name: "Developer",content: "Fahmi Abdul Aziz")
                        SettingsRowView(name: "Designer",content: "Fahmi Abdul Aziz")
                        SettingsRowView(name: "Compatibilty",content: "iOS 14")
                        SettingsRowView(name: "Website",linkLabel: "Google", linkDestination: "google.com")
                        SettingsRowView(name: "Twitter", linkLabel: "@Fahmi Abdul Aziz", linkDestination: "twitter.com")
                        SettingsRowView(name: "SwiftUi",content: "2.0")
                        SettingsRowView(name: "Version",content: "1.1.0")
                        
                    } label: {
                        SettingsLabelView(labelText: "Application", labelImage: "apps.iphone")
                        
                    }

                    
                    
                }// VSTACK
                .navigationTitle(Text("Settings"))
                .navigationBarTitleDisplayMode(.large)
                .toolbar {
                    Button {
                        presentationMode.callAsFunction()
                    } label: {
                        Image(systemName: "xmark")
                    }

                }
                .padding()
            } // SCROLL VIEW
        } // NAVIGATION
    }
}

// MARK: PREVIEW
struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
            .preferredColorScheme(.dark)
            .previewDevice("iPhone 11 Pro")
    }
}
