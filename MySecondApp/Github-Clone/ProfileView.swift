//
//  ProfileView.swift
//  MySecondApp
//
//  Created by ABDULRAHMAN AL-KHALED on 25/10/2023.
//

import SwiftUI


struct ProfileView: View {
    let Row1: Array<ProfileDetailInformation> = [ProfileDetailInformation(title: "Abdulrahman", subTitle: "Welcome", systemImage: "apple.logo"), ProfileDetailInformation(title: "Abdulrahman", subTitle: "Welcome", systemImage: "apple.logo"), ProfileDetailInformation(title: "Abdulrahman", subTitle: "Welcome", systemImage: "apple.logo"), ProfileDetailInformation(title: "Abdulrahman", subTitle: "Welcome", systemImage: "apple.logo")]
    
    var body: some View {
        ScrollView{
            HStack{
                Circle()
                    .fill(.blue)
                    .frame(width: 8*10, height: 8*10 )
                VStack{
                    Text("Abdulrahman Alkhaled")
                        .bold()
                        .font(.title2)
                        .frame(maxWidth: .infinity, alignment: .leading)
                    Text("Eng.Abdulrahman")
                        .foregroundStyle(Color(.systemGray))
                        .frame(maxWidth: .infinity, alignment: .leading)
                    
                }
            } // HStack 1
            .padding()
        
        ScrollView(.horizontal, showsIndicators: false){
        HStack{
                RoundedRectangle(cornerRadius: 8)
                    .frame(width: 8*40,
                    height: 8*20
                    )
                RoundedRectangle(cornerRadius: 8)
                    .frame(width: 8*40,
                    height: 8*20
                    )
                RoundedRectangle(cornerRadius: 8)
                    .frame(width: 8*40,
                    height: 8*20
                    )
            }
        } // ScrollView 2
        } // ScrollView 1
    }
}

struct ProfileView_Preview: PreviewProvider{
    static var previews: some View{
        ProfileView()
    }
}
struct ProfileDetailInformation: Identifiable{
    let id = UUID()
    let title: String
    var subTitle: String
    let systemImage: String
}
