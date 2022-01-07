//
//  ContentView.swift
//  Swift Many Socials
//
//  Created by blaze Wheeler on 12/31/21.
//

import SwiftUI

struct ContentView: View {
   
    var body: some View {
        TabView {
            FaceBook(text: .constant(""))
                .tabItem {
                    Image("facebook-square-fill")
                        .resizable()
                    Text("FaceBook")
                }
           SnapChat()
                .tabItem {
                    Image("snapchat-fill")
                        .resizable()
                        .foregroundColor(.gray)
                
                       
                    Text("SnapChat")
                }
            Instagram()
                .tabItem {
                    Image("instagram-fill")
                    Text("Instagram")
                }
            Tinder()
                .tabItem {
                    Image( "tinder-fill")
                    Text("Tinder")
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
