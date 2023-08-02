//
//  ContentView.swift
//  lck_project
//
//  Created by Tony on 2023/07/25.
//

import SwiftUI

struct ContentView: View {
    @State private var showingAlert = false
    
    var body: some View {
        NavigationView {
            ZStack {
                LinearGradient(gradient: Gradient(colors: [Color(""), Color("primaryColor")]),
                               startPoint: .top, endPoint: .bottom)
                .edgesIgnoringSafeArea(.all)

                VStack {
                    Image("lck_icon")
                        .resizable()
                        .frame(width: 210, height: 120)
                        .padding(40)
                    Text("League of Legends Championship Korea")
                        .font(Font.custom("CHANEY-UltraExtended", size: 20))
                        .fontWeight(.heavy)
                        .multilineTextAlignment(.center)
                    Spacer()
                    Image("lol_icon")
                        .resizable()
                        .frame(width: 70, height: 70)
                    Spacer()
                    Text("Be the MYTH\nBe the LEGEND")
                        .font(Font.custom("SinkinSans-500Medium", size: 20))
                        .fontWeight(.ultraLight)
                        .multilineTextAlignment(.center)
                        .padding(30)
                        .lineSpacing(7)
                    Spacer()
                    Text("Let's watch LCK!")
                        .font(Font.custom("SinkinSans-500Medium", size: 15))
                        .padding(25)
                    NavigationLink(destination: TeamList()) {
                        Image(systemName: "arrowtriangle.right.circle.fill").resizable()
                            .frame(width: 60, height: 60)
                    }
                    Button(action: {
                        showingAlert = true
                    }, label: {
                        Image(systemName: "info.circle")
                    }).alert(isPresented: $showingAlert) {
                        Alert(title: Text("LCK Introducing app"), message: Text("s3916884: Junsik Kang"), dismissButton: .default(Text("Got it!")))
                    }.offset(x: 160, y: 5)
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
