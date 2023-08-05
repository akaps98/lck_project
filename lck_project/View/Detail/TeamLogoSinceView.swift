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

struct TeamLogoSinceView: View {
    var team: Team
    
    var body: some View {
        Image(team.teamLogo)
            .resizable()
            .frame(width: 40, height: 40)
            Text(team.name)
            .font(Font.custom("CHANEY-UltraExtended", size: 30))
                .bold()
                .padding()
                .multilineTextAlignment(.center)
            Text("Since: \(team.since)")
            .font(Font.custom("CHANEY-UltraExtended", size: 16))
            .padding(.bottom)
    }
}
