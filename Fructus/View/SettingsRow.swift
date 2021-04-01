//
//  SettingsRow.swift
//  Fructus
//
//  Created by Anvarov Ayubkhon on 01/04/21.
//

import SwiftUI

struct SettingsRow: View {
    var name: String
    var content: String? = nil
    var linkLabel: String? = nil
    var linkDestination: String? = nil
    var body: some View {
        VStack {
            Divider().padding(.vertical, 4)
            HStack {
                Text(name).foregroundColor(.gray)
                Spacer()
                if content != nil {
                    Text(content!)
                } else if linkLabel != nil && linkDestination != nil{
                    Link(linkLabel! , destination: URL(string: "https://\(linkDestination!)")! )
                    Image(systemName: "arrow.up.right.square").foregroundColor(.pink)
                    
                    
                } else {
                    /*@START_MENU_TOKEN@*/EmptyView()/*@END_MENU_TOKEN@*/
                }
                   
            }
        }
    }
}

struct SettingsRow_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            SettingsRow(name: "Developer", content: "Anvarov/Ayubkhon")
                .previewLayout(.fixed(width: 375, height: 60))
                .padding()
            SettingsRow(name: "Website", linkLabel: "SwiftUI Masterclass", linkDestination: "swiftuimasterclass.com")
                .preferredColorScheme(.dark)
                .previewLayout(.fixed(width: 375, height: 60))
                .padding()
        }
    }
}
