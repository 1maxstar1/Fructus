//
//  StartButtonView.swift
//  Fructus
//
//  Created by ANVAROV AYUBKHON on 15/3/21.
//

import SwiftUI

struct StartButtonView: View {
    
    @AppStorage("isOnboarding") var isOboarding: Bool?
    var body: some View {
        Button(action: {
            isOboarding = false
        }){
            HStack {
                Text("Start")
                
                Image(systemName: "arrow.right.circle")
                    .imageScale(.large)
            }
            .padding(.horizontal, 16)
            .padding(.vertical, 10)
            .background(Capsule().strokeBorder(Color.white, lineWidth: 1.25))
//            .shadow(color: Color(red: 0, green: 0, blue: 0), radius: 3, x: 5, y: 3)
            
        }
        .accentColor(Color.white)
  
    }
}

struct StartButtonView_Previews: PreviewProvider {
    static var previews: some View {
        StartButtonView()
            .preferredColorScheme(.dark)
            .previewLayout(.sizeThatFits)
    }
}
