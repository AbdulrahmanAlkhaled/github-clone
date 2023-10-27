//
//  NotificationsView.swift
//  MySecondApp
//
//  Created by ABDULRAHMAN AL-KHALED on 25/10/2023.
//

import SwiftUI

struct NotificationsView: View {
    
    var body: some View {
        ScrollView{
            VStack{
                Text("Inbox")
                    .font(.largeTitle)
                    .bold()
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding()
                VStack(spacing: 210){
                    Spacer()
                    Text("Inbox is empty!")
                        .font(.title2)          
                        .padding()
                        .frame(maxWidth: .infinity, alignment: .center)
                }
            }
        }
        
    }
}
    
#Preview {
    NotificationsView()
}
