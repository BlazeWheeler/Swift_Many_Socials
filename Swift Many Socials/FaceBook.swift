//
//  FaceBook.swift
//  Swift Many Socials
//
//  Created by blaze Wheeler on 1/3/22.
//

import SwiftUI
struct FBPostModel : Hashable {
    let name : String
    let post : String
    let imageName : String
    
}

struct FaceBook: View {
    
    @Binding var text: String
    let stories = ["stories1","stories2","stories3","stories4","stories5", "stories6"]
    let posts: [FBPostModel] = [
        FBPostModel(name: "Jeffery Bezos",
                    post: "Hey, India. We’re rolling out our new fleet of electric delivery rickshaws. Fully electric. Zero carbon. #ClimatePledge",
                    imageName: "person1"),
        
        FBPostModel(name: "Steve Wozniak",
                                  post: "My good friend, Jeff Cable, is back at his 7th Olympics in Tokyo and blogging behind the scenes every day.",
                                  imageName: "person2"),
        FBPostModel(name: "Mark Zuckerberg",
                                  post: "Ever heard a toilet be compared to an espresso machine? That’s how Dr. Shannon Yee describes the toilet he and his team have developed.",
                                  imageName: "person3")
    ]
   
    var body: some View {
        
        let facebookBlue = UIColor(red: 23/255.0,
                                   green: 120/255.0,
                                   blue: 242/255.0,
                                   alpha: 1)
        
        VStack{
            HStack{
                Text("Facebook")
                    .font(.system(size: 48, weight: .bold, design: .default))
                    .foregroundColor(Color(facebookBlue))
               Spacer()
                
                Image(systemName: "person.circle")
                    .resizable()
                    .frame(width:45, height: 45, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                    .foregroundColor(Color(.secondaryLabel))
                
            }
            //Vertical Stack
            .padding()
            TextField("Search...", text: $text)
            // Search Bar Modifiers
                .padding(7)
                .background(Color(.systemGray5))
                .cornerRadius(7)
                .padding(.horizontal, 15)
                
            ZStack{
                
                // Stories
                ScrollView(.vertical){
                    VStack{
                        
                        StoriesView(stories: stories)
                        ForEach(posts, id: \.self){ model in
                            FBPost(model: model)
                            Spacer()
                        }
                    }
                }
            }
            Spacer()
        }
    }
}




struct FaceBook_Previews: PreviewProvider {
    static var previews: some View {
        FaceBook(text: .constant(""))
        
    }
}
