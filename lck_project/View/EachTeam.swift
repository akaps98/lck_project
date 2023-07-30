//
//  eachTeam.swift
//  lck_project
//
//  Created by Tony on 2023/07/30.
//

import SwiftUI
import CoreLocation

struct EachTeam: View {
    var team: Team
    
    var body: some View {
        ZStack {
            LinearGradient(gradient: Gradient(colors: [Color("primaryColor"), Color("secondaryColor")]),
                            startPoint: .top, endPoint: .bottom)
            .edgesIgnoringSafeArea(.all)
        ScrollView {
                VStack {
                    Image(team.teamLogo)
                        .resizable()
                        .frame(width: 40, height: 40)
                        Text(team.name)
                        .font(Font.custom("CHANEY-UltraExtended", size: 30))
                            .bold()
                            .padding()
                            .foregroundColor(Color.white)
                            .multilineTextAlignment(.center)
                        Text("Since: \(team.since)")
                        .font(Font.custom("CHANEY-UltraExtended", size: 16))
                        .foregroundColor(Color.white)
                        .padding(.bottom)
                    TeamMemberPic(memberImage: Image(team.memberPic)).padding(.bottom)
                    Group {
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
                    HStack {
                        Image(systemName: "person.fill")
                            .foregroundColor(Color.black)
                            .font(.system(size: 32))
                            .offset(y: -8)
                        Text("Member")
                            .font(Font.custom("CHANEY-UltraExtended", size: 32))
                            .underline()
                            .padding(.bottom)
                    }
                    Group {
                        Text("TOP: \(team.player.Top)")
                            .font(Font.custom("AgencyFB-Bold", size: 27))
                            .padding(.bottom)
                        Text("JUNGLE: \(team.player.Jungle)")
                            .font(Font.custom("AgencyFB-Bold", size: 27))
                            .padding(.bottom)
                        Text("MID: \(team.player.Mid)")
                            .font(Font.custom("AgencyFB-Bold", size: 27))
                            .padding(.bottom)
                        Text("AD CARRY: \(team.player.ADC)")
                            .font(Font.custom("AgencyFB-Bold", size: 27))
                            .padding(.bottom)
                        Text("SUPPORT: \(team.player.Support)")
                            .font(Font.custom("AgencyFB-Bold", size: 27))
                            .padding(.bottom)
                    }
                }
            }
        }
        .navigationBarTitleDisplayMode(.inline)
        
    }
}

struct EachTeam_Previews: PreviewProvider {
    static var previews: some View {
        EachTeam(team: teams[0])
    }
}
