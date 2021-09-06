//
//  MainScreen.swift
//  project1
//
//  Created by Dmitriy Skorohodov on 05.09.2021.
//

import SwiftUI

struct MainScreen: View {
    
    @State var tabSelection: Int = 0
    @State var selectedTopic: Int?
    
    var body: some View {
        TabView(selection: $tabSelection){
            InfoView(tabSelection: $tabSelection, selectedTopic: $selectedTopic)
                .font(.title)
                .tabItem {
                    Image(systemName: "person.crop.circle")
                    Text("Profile")
                }
                .tag(0)
            TopicsView(selectedTopic: $selectedTopic)
                .tabItem {
                    Image(systemName: "tray")
                    Text("Topics")
                }
                .tag(1)
            ExtraView()
                .tabItem {
                    Image(systemName: "lasso")
                    Text("Extra")
                }
                .tag(2)
        }
    }
}

struct MainScreen_Previews: PreviewProvider {
    static var previews: some View {
        MainScreen()
    }
}
