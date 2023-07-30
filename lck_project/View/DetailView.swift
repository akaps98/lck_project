//
//  DetailView.swift
//  lck_project
//
//  Created by Tony on 2023/07/31.
//

import SwiftUI

struct DetailView: View {
    
    let text: String
    let url: String
    let imageName: String
    
    var body: some View {
        RoundedRectangle(cornerRadius: 25)
            .fill(Color.white)
            .frame(height: 50.0)
            .overlay(HStack {
                Image(systemName: imageName)
                    .foregroundColor(Color("primaryColor"))
                Link(destination: URL(string: url)!) {
                    Text(text)
                        .foregroundColor(.black)
                }
                
            })
            .padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        ZStack {
            Color("rmit-blue")
                .edgesIgnoringSafeArea(.all)
            VStack{
                DetailView(text: "123456789", url: "tel:123456789", imageName: "phone.fill")
                DetailView(text: "email@gmail.com", url: "mailto:email@gmail.com", imageName: "envelope.fill")
            }
        }
        DetailView(text: "123456789", url: "tel:123456789", imageName: "phone.fill")
            .previewLayout(.sizeThatFits)
        DetailView(text: "email@gmail.com", url: "mailto:email@gmail.com", imageName: "envelope.fill")
            .previewLayout(.sizeThatFits)
    }
}
