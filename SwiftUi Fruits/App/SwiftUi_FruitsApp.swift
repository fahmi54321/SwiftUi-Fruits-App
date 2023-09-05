//
//  SwiftUi_FruitsApp.swift
//  SwiftUi Fruits
//
//  Created by Fahmi Aziz on 26/08/23.
//

import SwiftUI

@main
struct SwiftUi_FruitsApp: App {
    
    @AppStorage("isOnboarding") var isOnboarding: Bool = true
    
    var body: some Scene {
        WindowGroup {
            
            if isOnboarding {
                OnboardingView()
            }else{
                ContentView()
            }
        }
    }
}
