//
//  FruitDetailView.swift
//  Fructus
//
//  Created by Anvarov Ayubkhon on 23/03/21.
//

import SwiftUI

struct FruitDetailView: View {
    //MARK: PROPERTIES
    var fruit: Fruit
    
    //MARK: BODY
    var body: some View {
        NavigationView{
            ScrollView(.vertical, showsIndicators: false){
                VStack(alignment: .center, spacing: 20){
                    FruitHeaderView(fruit: fruit)
                    VStack(alignment: .leading, spacing: 20){
                       
                        Text(fruit.title)
                            .font(.largeTitle)
                            .fontWeight(.heavy)
                            .foregroundColor(fruit.gradientColors[1])
                        Text(fruit.headline)
                            .font(.headline)
                            .multilineTextAlignment(.leading)
                        
                        
                        //MARK: NUTRITIONS
                        FruitNutrientsView(fruit: fruit)
                        //MARK: Subheadline
                        
                        Text("Learn more about \(fruit.title)".uppercased())
                            .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                            .foregroundColor(fruit.gradientColors[1])
                        
                        //MARK: DESCRIPTION
                        Text(fruit.description)
                            .multilineTextAlignment(.leading)
                        //MARK: LINK
                        SourceLinkView()
                            .padding(.top, 10)
                            .padding(.bottom, 40)

                    }
                    .padding(.horizontal, 20)
                    .frame(maxWidth: 640, alignment: .center)
                }
                .navigationBarTitle(fruit.title, displayMode: .inline)
                .navigationBarHidden(true)
                
            }
            .edgesIgnoringSafeArea(.top)
        }
    }
}


//MARK: PREVIEW
struct FruitDetailView_Previews: PreviewProvider {
    static var previews: some View {
        FruitDetailView(fruit: fruitsData[0])
            .previewDevice("iPhone 12 Pro Max")
    }
}
