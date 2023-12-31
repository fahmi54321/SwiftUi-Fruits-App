//
//  FruitDetailView.swift
//  SwiftUi Fruits
//
//  Created by Fahmi Aziz on 27/08/23.
//

import SwiftUI

struct FruitDetailView: View {
    
    // MARK: PROPERTIES
    var fruit: Fruit
    
    // MARK: BODY
    var body: some View {
        NavigationStack {
            ScrollView(.vertical, showsIndicators: false){
                VStack (alignment: .center, spacing: 20.0){
                    
                    // HEADER
                    FruitHeaderView(fruit: fruit)
                    
                    VStack (alignment: .leading, spacing: 20.0) {
                        // TITLE
                        Text(fruit.title)
                            .font(.largeTitle)
                            .fontWeight(.heavy)
                            .foregroundColor(fruit.gradientColors[1])
                        
                        // HEADLINE
                        Text(fruit.headline)
                            .font(.headline)
                            .multilineTextAlignment(.leading)
                        
                        // NUTRIENTS
                        FruitNutrientsView(fruit: fruit)
                        
                        // SUBHEADLINE
                        Text("learn more about \(fruit.title)".uppercased())
                            .fontWeight(.bold)
                            .foregroundColor(fruit.gradientColors[1])
                        
                        // DESCRIPTION
                        Text(fruit.description)
                            .multilineTextAlignment(.leading)
                        
                        // LINK
                        SourceLinkView()
                            .padding(.top, 10)
                            .padding(.bottom, 40)
                        
                        
                    }// VSTACK
                    .padding(.horizontal, 20)
                    .frame(maxWidth: 640.0, alignment: .center)
                }// VSTACK
                .navigationTitle(fruit.title)
                .navigationBarTitleDisplayMode(.inline)
                .toolbar(.hidden)
            }// SCROLL
            .edgesIgnoringSafeArea(.top)
        }// NAVIGATION
    }
}

// MARK: PREVIEW
struct FruitDetailView_Previews: PreviewProvider {
    static var previews: some View {
        FruitDetailView(fruit: fruitsData[0])
    }
}
