//
//  teamMember.swift
//  lck_project
//
//  Created by Tony on 2023/07/30.
//

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
        TeamMemberPic(memberImage: Image("KT Rolster_member"))
    }
}
