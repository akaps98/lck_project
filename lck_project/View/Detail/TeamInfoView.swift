/*
  RMIT University Vietnam
  Course: COSC2659 iOS Development
  Semester: 2023B
  Assessment: Assignment 1
  Author: Junsik Kang
  ID: s3916884
  Created  date: 01/08/2023
  Last modified: 01/08/2023
  Acknowledgement:
*/

import SwiftUI

struct TeamInfoView: View {
    var team: Team
    
    var body: some View {
        HStack {
            Image(systemName: "info.circle")
                .foregroundColor(Color.black)
                .font(.system(size: 32))
                .offset(y: -8)
            Text("Team Info")
                .font(Font.custom("CHANEY-UltraExtended", size: 32))
                .padding(.bottom)
                .underline()
        }
        Text("Head Coach: \(team.headCoach)")
            .font(Font.custom("AgencyFB-Bold", size: 27))
            .padding(.bottom)
        Text("Coach: \(team.coach)")
            .font(Font.custom("AgencyFB-Bold", size: 27))
            .padding(.bottom)
        HStack {
            Text("Sponsor:")
                .font(Font.custom("AgencyFB-Bold", size: 27))
            ForEach(team.sponsor, id:\.self) {sponsor in
                Text(sponsor)
                    .font(Font.custom("AgencyFB-Bold", size: 27))
            }
        }.padding(.bottom)
    }
}

struct TeamInfoView_Previews: PreviewProvider {
    static var previews: some View {
        TeamInfoView(team: teams[0])
    }
}
