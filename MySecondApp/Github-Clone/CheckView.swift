//
//  CheckView.swift
//  MySecondApp
//
//  Created by ABDULRAHMAN AL-KHALED on 25/10/2023.
//

import SwiftUI

struct CheckView: View {
    var body: some View {
      //  NavigationStack{
            TabView{
                HomeView()
                    .tabItem {
                        Image(systemName: "house")
                        Text("Home")
                    }
                ExploreView()
                    .tabItem { Image(systemName: "doc.text.magnifyingglass")
                        Text("Explore")
                    }
                NotificationsView()
                    .tabItem {
                        Image(systemName: "light.beacon.max.fill")
                        Text("Notification")
                    }
                ProfileView()
                    .tabItem {
                        Image(systemName: "person.crop.circle")
                        Text("Profile")
                    }
            }
        }
    }
//}
struct CheckView_Preview: PreviewProvider{
    static var previews: some View{
        CheckView()
    }
}
