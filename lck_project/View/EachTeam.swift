/*
  RMIT University Vietnam
  Course: COSC2659 iOS Development
  Semester: 2023B
  Assessment: Assignment 1
  Author: Junsik Kang
  ID: s3916884
  Created  date: 30/07/2023
  Last modified: 03/08/2023
  Acknowledgement:  1.https://www.hackingwithswift.com/quick-start/swiftui/how-to-render-a-gradient
      2.https://developer.apple.com/documentation/xcode/configuring-your-app-icon
      3.https://developer.apple.com/documentation/swiftui/applying-custom-fonts-to-text/
*/

import SwiftUI
import CoreLocation

struct EachTeam: View {
    var team: Team
    
    var body: some View {
        ZStack {
            LinearGradient(gradient: Gradient(colors: [Color(""), Color("primaryColor")]), startPoint: .top, endPoint: .bottom)
            .edgesIgnoringSafeArea(.all)
        ScrollView {
                VStack {
                    TeamLogoSinceView(team: team)
                    TeamMemberPic(memberImage: Image(team.memberPic)).padding(.bottom)
                    TeamInfoView(team: team)
                    TeamMemberView(team: team)
                    TeamHouseMapView(team: team)
                }
            }
        }.navigationBarTitleDisplayMode(.inline)
    }
}

struct EachTeam_Previews: PreviewProvider {
    static var previews: some View {
        EachTeam(team: teams[0])
    }
}
