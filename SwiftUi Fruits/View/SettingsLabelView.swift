//
//  SettingsLabelView.swift
//  SwiftUi Fruits
//
//  Created by Fahmi Aziz on 05/09/23.
//

import SwiftUI

struct SettingsLabelView: View {
    
    // MARK: PROPERTIES
    var labelText: String
    var labelImage: String
    
    // MARK: BODY
    var body: some View {
        
        HStack{
            Text(labelText.uppercased())
                .fontWeight(.bold)
            Spacer()
            Image(systemName: labelImage)
            
        }// HSTACK
    }
}

// MARK: PREVIEW
struct SettingsLabelView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsLabelView(labelText: "Fructus", labelImage: "info.circle")
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
