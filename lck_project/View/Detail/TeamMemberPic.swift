/*
  RMIT University Vietnam
  Course: COSC2659 iOS Development
  Semester: 2023B
  Assessment: Assignment 1
  Author: Junsik Kang
  ID: s3916884
  Created  date: 30/07/2023
  Last modified: 30/07/2023
  Acknowledgement:
*/

import SwiftUI

struct TeamMemberPic: View {
    var memberImage: Image
    
    var body: some View {
        memberImage
            .resizable()
            .aspectRatio(contentMode: .fit)
            .shadow(radius: 5)
    }
}

struct TeamMemberPic_Previews: PreviewProvider {
    static var previews: some View {
        TeamMemberPic(memberImage: Image("KTRolster_member"))
    }
}
