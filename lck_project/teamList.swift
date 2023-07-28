//
//  teamList.swift
//  lck_project
//
//  Created by Tony on 2023/07/25.
//

import SwiftUI

struct teamList: View {
    @State private var searchText: String = ""

    let names = ["KT Rolster", "T1", "Gen.G Esports", "Dplus KIA", "Hanwha Life Esports", "Liiv Sandbox", "BRION", "Kwangdong Freecs", "DRX", "Nongshim RedForce"]
    
    var body: some View {
        VStack {
            Text("⭐ LCK Teams ⭐")
                .font(Font.custom("CHANEY-UltraExtended", size: 20, relativeTo: .title))
            List {
                ForEach(searchResults, id: \.self) { name in
                    HStack {
                        NavigationLink (destination: teamIntro()) {
                            Image("\(name)_icon")
                                .resizable()
                                .frame(width: 35, height: 30)
                            VStack(alignment: .leading){
                                Text("\(name)").font(Font.custom("SinkinSans-500Medium", size: 16.5, relativeTo: .body))
                                    .padding(0.2)
                                switch name {
                                case "KT Rolster":
                                    Text("since: 2012")
                                        .font(Font.custom("SinkinSans-500Medium", size: 12, relativeTo: .body))
                                        .padding(0.2)
                                case "T1":
                                    Text("since: 2012")
                                        .font(Font.custom("SinkinSans-500Medium", size: 12, relativeTo: .body))
                                        .padding(0.2)
                                case "Gen.G Esports":
                                    Text("since: 2013")
                                        .font(Font.custom("SinkinSans-500Medium", size: 12, relativeTo: .body))
                                        .padding(0.2)
                                case "Dplus KIA":
                                    Text("since: 2017")
                                        .font(Font.custom("SinkinSans-500Medium", size: 12, relativeTo: .body))
                                        .padding(0.2)
                                case "Hanwha Life Esports":
                                    Text("since: 2018")
                                        .font(Font.custom("SinkinSans-500Medium", size: 12, relativeTo: .body))
                                        .padding(0.2)
                                case "Liiv Sandbox":
                                    Text("since: 2016")
                                        .font(Font.custom("SinkinSans-500Medium", size: 12, relativeTo: .body))
                                        .padding(0.2)
                                case "BRION":
                                    Text("since: 2018")
                                        .font(Font.custom("SinkinSans-500Medium", size: 12, relativeTo: .body))
                                        .padding(0.2)
                                case "Kwangdong Freecs":
                                    Text("since: 2016")
                                        .font(Font.custom("SinkinSans-500Medium", size: 12, relativeTo: .body))
                                        .padding(0.2)
                                case "DRX":
                                    Text("since: 2012")
                                        .font(Font.custom("SinkinSans-500Medium", size: 12, relativeTo: .body))
                                        .padding(0.2)
                                case "Nongshim RedForce":
                                    Text("since: 2016")
                                        .font(Font.custom("SinkinSans-500Medium", size: 12, relativeTo: .body))
                                        .padding(0.2)
                                default:
                                    Text("No")
                                }
                            }
                        }
                    }
                }
            }.searchable(text: $searchText, placement: .navigationBarDrawer(displayMode: .always))
        }
    }
    
    var searchResults: [String] {
            if searchText.isEmpty {
                return names
            } else {
                return names.filter { $0.localizedStandardContains(searchText)}
            }
        }
}
