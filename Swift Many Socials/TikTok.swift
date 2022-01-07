//
//  TikTok.swift
//  Swift Many Socials
//
//  Created by blaze Wheeler on 12/31/21.
//

import SwiftUI

struct TikTok: View {
    var body: some View {
        Home()
    }
}

struct TikTok_Previews: PreviewProvider {
    static var previews: some View {
        TikTok()
    }
}

struct Home : View {
    @State var index = 0
    var body: some View {
        ZStack{
            VStack{
                Spacer()
                HStack {
                    Button(action: {
                        self.index = 0
                        
                    }) {
                        Image("home")
                            .resizable()
                            .frame(width: 25, height: 25)
                            .foregroundColor(self.index == 0 ? .white: Color.white.opacity(0.35))
                            .padding(.horizontal)
                    }
                    Button(action: {
                        self.index = 1
                    }) {
                        Image("search")
                            .resizable()
                            .frame(width: 25, height: 25)
                            .foregroundColor(self.index == 1 ? .white : Color.white.opacity(0.35))
                            .padding(.horizontal)
                    }
                    Button(action: {
                       
                    }) {
                        Image("upload")
                            .resizable()
                            .frame(width: 50, height: 35)
                            .foregroundColor(self.index == 0 ? .white : Color.white.opacity(0.35))
                            .padding(.horizontal)
                        
                    }
                    Button(action: {
                        self.index = 2
                    }) {
                        Image("comment")
                            .resizable()
                            .frame(width: 25, height: 25)
                            .foregroundColor(self.index == 2 ? .white : Color.white.opacity(0.35))
                            .padding(.horizontal)
                        
                    }
                    
                    Button(action: {
                        self.index = 3
                    }) {
                        Image("person")
                            .resizable()
                            .frame(width: 25, height: 25)
                            .foregroundColor(self.index == 3 ? .white : Color.white.opacity(0.35))
                            .padding(.horizontal)
                        
                    }
                }
                .padding(.horizontal)
            }
        }
    }
}
