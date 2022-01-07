//
//  FBPostView.swift
//  Facebook
//
//  Created by blaze Wheeler on 8/9/21.
//

import Foundation

import SwiftUI

struct FBPost: View {
    
    @State var isLiked: Bool = false
    
    let model: FBPostModel
    
    var body: some View{
        VStack{
            //Profile Picture & Name
            HStack{
                Image(model.imageName)
                    .resizable()
                    .frame(width: 50 ,height: 50, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                    .aspectRatio(contentMode: /*@START_MENU_TOKEN@*/.fill/*@END_MENU_TOKEN@*/)
                    .cornerRadius(25.0)
                VStack{
                    HStack{
                        Text(model.name)
                            .foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
                            .font(.system(size: 18, weight: .semibold, design: .default))
                        Spacer()
                    }
                    HStack{
                        Text("12 Minutes Ago")
                            .foregroundColor(Color(.secondaryLabel))
                        Spacer()
                    }
                }
                Spacer()
            }
            //Post Info
            HStack{
                Text(model.post)

                    .font(.system(size: 20, weight: .regular, design: .default))
                    .multilineTextAlignment(.leading)
                    Spacer()
            }
            //Like Comment & Share Button
            
            HStack{
                Button(action: {
                    isLiked.toggle()
                    
                }, label: {
                    Text(isLiked ? "1 Like": "Like")
                    
                })
                Spacer()
                
                Button(action: {
                    
                }, label: {
                    Text("Comment")
                })
                Spacer()
                Button(action: {
                    
                }, label: {
                    Text("Share")
                })
             
            }
            .padding()
        }
        .padding()
        .background(Color(.systemGray6))
        .cornerRadius(7)
        
    }
  
}
