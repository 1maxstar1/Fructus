//
//  SettingsView.swift
//  Fructus
//
//  Created by Anvarov Ayubkhon on 25/03/21.
//

import SwiftUI

struct SettingsView: View {
    //MARK: -PROPERTIES
    @Environment(\.presentationMode) var presentationMode
    
    
    //MARK: -BODY
    var body: some View {
        NavigationView{
            ScrollView(.vertical, showsIndicators: false){
                VStack(spacing: 20) {
                    //MARK: - SECTION 1
                    GroupBox(
                        label:
                          SettingsLabelView(labelText: "fructus", labelImage: "info.circle")

                    ){
                        Divider().padding(.vertical, 4)
                        HStack(alignment: .center , spacing: 10) {
                            Image("logo")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 80, height: 80)
                                .cornerRadius(9)
                            Text("Most fruits are naturally low in fat, sodium, and colories. None have cholesterol. Fruitas are  sources of many essential nutrients, including potasium, dietary fibery, vitamins, and much more.")
                                .font(.footnote)
                        }
                    }
                    //MARK: - SECTION 2
                    
                    //MARK: - SECTION 3
                    GroupBox(
                        label:    SettingsLabelView(labelText: "Application", labelImage: "apps.iphone")
                    ){
                        
                        SettingsRow(name: "Developer", content:  "Anvarov/Ayubkhon")
                        SettingsRow(name: "Designer", content: "MaxStar")
                        SettingsRow(name: "Compability", content: "IOS 14")
                        SettingsRow(name: "Website",  linkLabel: "SwiftUI Masterclass", linkDestination: "www.linkedin.com/in/anvarov-ayubkhon-103b2b201")
                        SettingsRow(name: "Instagram", linkLabel: "@maxs7tar", linkDestination: "instagram.com/max7star")
                        SettingsRow(name: "SwiftUI", content: "2.0")
                        SettingsRow(name: "Version", content: "1.1.0")
                        
                   
                    }//BOX
                  
                }//MARK: Vstack
                .navigationBarTitle(Text("Settings"), displayMode: .large)
                .navigationBarItems(trailing:
                                    Button( action:
                                            {
                                                presentationMode.wrappedValue.dismiss()
                                            })
                {
                    Image(systemName: "xmark")
                }
                )
                .padding()
            }//: ScrolView
        }//: NavigationVIEW
    }
}
    //: -PREVIEW
struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
            .preferredColorScheme(.dark)
    }
}
