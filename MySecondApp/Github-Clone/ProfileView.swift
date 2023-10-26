//
//  ProfileView.swift
//  MySecondApp
//
//  Created by ABDULRAHMAN AL-KHALED on 25/10/2023.
//

import SwiftUI


struct ProfileView: View {
    let DetailsRow: Array<ProfileDetailInformation> = [
        ProfileDetailInformation(
            title: "@saspf",
            subTitle: "",
            systemImage: "building.2"),
        ProfileDetailInformation(
            title: "Riyadh, KSA",
            subTitle: "",
            systemImage: "mappin.circle")
    ]
    let DetailsRow2: Array<ProfileDetailInformation> = [
        ProfileDetailInformation(
            title: "lab.sa",
            subTitle: "",
            systemImage: "link"),
        ProfileDetailInformation(
            title: "Developer Program Member",
            systemImage: "menucard"),
        
    ]
    let DetailsRow3: Array<ProfileDetailInformation> = [
        ProfileDetailInformation(
            title: "13 Followers  •",
            subTitle: "3 Following",
            systemImage: "person"),
        
        
        
    ]
    let myWorkRows2: Array<RowData> = [
        RowData(
            title: "Repositories",
            leadingImageName: "book.closed",
            leadingImageBackgroundColor: .black.opacity(0.7)
        ),
        RowData(
            title: "Organizations",
            leadingImageName: "building.2",
            leadingImageBackgroundColor: .orange
        ),
        RowData(
            title: "Starred",
            leadingImageName: "star",
            leadingImageBackgroundColor: .yellow
        )]
    var body: some View {
        ScrollView{
            VStack{
                HStack{
                    Circle()
                        .fill(.gray)
                        .frame(width: 8*10, height: 8*10 )
                    
                    VStack{
                        Text("Abdulrahman Al-Khaled")
                            .bold()
                            .font(.title2)
                            .frame(maxWidth: .infinity, alignment: .leading)
                        Text("Eng.Abdulrahman")
                            .foregroundStyle(Color(.systemGray))
                            .frame(maxWidth: .infinity, alignment: .leading)
                        
                    } // VStack 2
                } // HStack 1
                Text("I failed the turing test")
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding(2)
                HStack {
                    ForEach(DetailsRow) { row in
                        
                        Image(systemName: row.systemImage)
                            .foregroundColor(Color(.systemGray))
                        Text(row.title)
                            .lineLimit(1) // Set the line limit to 1
                            .padding(.trailing)
                    }
                }
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding(.horizontal)
                
                HStack {
                    ForEach(DetailsRow2) { row in
                        
                        Image(systemName: row.systemImage)
                            .foregroundColor(Color(.systemGray))
                        Text(row.title)
                            .lineLimit(1) // Set the line limit to 1
                            .padding(.trailing)
                    }
                }// HStack 2
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding(.horizontal)
                HStack {
                    ForEach(DetailsRow3) { row in
                        
                        Image(systemName: row.systemImage)
                            .foregroundColor(Color(.systemGray))
                        Text(row.title)
                        Text(row.subTitle)
                            .lineLimit(1) // Set the line limit to 1
                            .padding(.trailing)
                    }
                } // HStack 3
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding(.horizontal)
                
                Spacer()
                HStack{
                    Image(systemName: "trophy")
                        .padding()
                        .foregroundColor(Color(.systemGray))
                    
                    ZStack{
                        Image("github-1")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 32, height: 32)
                            .offset(x: -19)
                        Image("github-2")
                            .resizable()
                            .frame(width: 32, height: 32)
                        Image("github-yolo")
                            .resizable()
                            .frame(width: 32, height: 32)
                            .offset(x: 19)
                        
                            .aspectRatio(contentMode: .fit)
                    }
                }
                .frame(maxWidth: .infinity, alignment: .leading)
            } // VStack 1
            .padding(.horizontal)
            VStack {
                
                ForEach(myWorkRows2) { row in
                    makeRow2(row: row)
                    if myWorkRows2.last?.id != row.id {
                        Divider()
                            .padding(.leading)
                    }
                }
                Spacer()
            } .padding(.vertical)
                .background(.white.opacity(0.75))
                .cornerRadius(8)
            
            HStack{
                Image(systemName: "pin")
                Text("Pinned")
                
            } // HStack4
            .padding(1)
            .foregroundStyle(.gray)
            .frame(maxWidth: .infinity,alignment: .leading)
            
            ScrollView(.horizontal, showsIndicators: false){ // I put showsIndiccators to remove the line when we scroll the rectangle.
                
                
                Spacer()
                HStack{
                    Image("github2")
                        .cornerRadius( 5)
                        .frame(width: 8*40,
                               height: 8*20
                        )
                    RoundedRectangle(cornerRadius: 5)
                        .foregroundColor(.blue)
                        .frame(width: 8*40,
                               height: 8*20
                        )
                    RoundedRectangle(cornerRadius: 5)
                        .foregroundColor(.cyan)
                        .frame(width: 8*40,
                               height: 8*20)
                    
                    
                } // HStack 5
                
            } // ScrollView 2
            
        } // ScrollView 1
        
    }
    func makeRow2(row: RowData) -> some View {
        HStack {
            Image(systemName: row.leadingImageName)
                .resizable()
                .scaledToFit()
                .frame(width: 24, height: 24)
                .foregroundColor(row.leadingImageForegroundColor)
                .padding(8)
                .background(
                    RoundedRectangle(cornerRadius: 8)
                        .fill(row.leadingImageBackgroundColor)
                )
            Text(row.title)
            Spacer()
            Image(systemName: "chevron.right")
        }
        .padding(.horizontal)
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
    var subTitle: String = ""
    let systemImage: String
}
struct RowData2: Identifiable {
    let id = UUID()
    let title: String
    let leadingImageName: String
    let leadingImageForegroundColor: Color = .white
    let leadingImageBackgroundColor: Color
}
