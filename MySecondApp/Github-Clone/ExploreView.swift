//
//  ExploreView.swift
//  MySecondApp
//
//  Created by ABDULRAHMAN AL-KHALED on 25/10/2023.
//

import SwiftUI

struct ExploreView: View {
    let RowViewTab: Array<RowInfo> = [
        .init(title: "Trending repositories", leadingImageName: "flame", leadingImageBackgroundColor: .purple),
        .init(title: "Awesome list", leadingImageName: "face.smiling", leadingImageBackgroundColor: .pink)]
    @State private var searchItem = ""
    var body: some View {
        NavigationStack{
            ScrollView{
                VStack {
                    HStack {
                        Text("Discover")
                            .bold()
                        Spacer()
                    }.padding(.horizontal)
                    
                    VStack {
                        ForEach(RowViewTab) { row in
                            makeRows(row: row)
                            if RowViewTab.last?.id != row.id {
                                Divider()
                                    .padding(.leading)
                            }
                        }
                        
                    }
                    .padding(.vertical)
                    .background(.gray.opacity(0.1))
                    .cornerRadius(8)
                    .padding(.horizontal)
                    Spacer()
                    
                }
                Spacer()
                VStack{
                    Spacer()
                    HStack {
                        Text("Acvtivies")
                            
                            .bold()
                            .frame(maxWidth: .infinity, alignment: .leading)
                        Image(systemName: "slider.horizontal.3")
                    }.padding(.horizontal)
                    RoundedRectangle(cornerRadius: 9)
                        .foregroundColor(.yellow)
                        .frame(width: 8*45,
                               height: 8*30
                        )
                }
                .navigationTitle("Explore")
            }
            .searchable(text: $searchItem, prompt:"Search")
        }
    }
        func makeRows(row: RowInfo) -> some View {
            HStack {
                Image(systemName: row.leadingImageName)
                    .resizable()
                // .scaledToFit()
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

struct ExploreView_Preview: PreviewProvider{
    static var previews: some View{
        ExploreView()
    }
}
struct RowInfo: Identifiable{
    let id = UUID()
    let title: String
    let leadingImageName: String
    let leadingImageForegroundColor: Color = .white
    let leadingImageBackgroundColor: Color
}
