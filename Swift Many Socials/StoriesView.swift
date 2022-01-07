// Swift Many Socials
//  StoriesView.swift
//  Facebook
//  Created by blaze Wheeler on 8/9/21.
//

import Foundation
import SwiftUI

struct StoriesView: View {
    let stories: [String]
    var body: some View{
        ScrollView(.horizontal, showsIndicators: false){
            HStack(spacing: 3){
                ForEach(stories, id: \.self){ name in
                    Image(name)
                        .resizable()
                        .frame(width: 140, height: 200, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                        .background(Color(.systemGray5))
                        .aspectRatio(contentMode: /*@START_MENU_TOKEN@*/.fill/*@END_MENU_TOKEN@*/)
                }
              
            }
            .padding()
        }
    }
}
