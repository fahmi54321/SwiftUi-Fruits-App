//
//  FruitRowView.swift
//  SwiftUi Fruits
//
//  Created by Fahmi Aziz on 27/08/23.
//

import SwiftUI

struct FruitRowView: View {
    
    // MARK: PROPERTIES
    var fruit: Fruit
    
    
    // MARK: BODY
    var body: some View {
        HStack{
            Image(fruit.image)
                .renderingMode(.original)
                .resizable()
                .scaledToFit()
                .frame(width: 80.0,height: 80.0, alignment: .center)
                .shadow(color: Color(red: 0, green: 0, blue: 0,opacity: 0.3), radius: 3,x: 2, y: 2)
                .background(
                    LinearGradient(colors: fruit.gradientColors, startPoint: .top, endPoint: .bottom))
                .cornerRadius(8)
            
            VStack (alignment: .leading, content: {
                Text(fruit.title)
                    .font(.title2)
                    .fontWeight(.bold)
                Text(fruit.headline)
                    .font(.caption)
                    .foregroundColor(.secondary)
            })
        }// HSTACK
        
    }
}

// MARK: PREVIEW

struct FruitRowView_Previews: PreviewProvider {
    static var previews: some View {
        FruitRowView(fruit: fruitsData[0])
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
