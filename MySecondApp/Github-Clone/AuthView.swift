//
//  RootView.swift
//  MySecondApp
//
//  Created by ABDULRAHMAN AL-KHALED on 26/10/2023.
//

import SwiftUI

struct LoginAuthOption: Identifiable{
    let id = UUID()
    let leadingImageName: String
    let title: String
    let titleColor: Color
    let backgroundColor: Color
    let borderColor: Color
}
let loginOptions: Array<LoginAuthOption> = [
    .init(leadingImageName: "apple.logo", title: "sigin with apple", titleColor: .white, backgroundColor: .blue, borderColor: .gray.opacity(0.5)),
    .init(leadingImageName: "apple.logo", title: "sigin with apple", titleColor: .black, backgroundColor: .red, borderColor: .gray.opacity(0.5)),
    .init(leadingImageName: "apple.logo", title: "sigin with apple", titleColor: .black, backgroundColor: .pink, borderColor: .gray.opacity(0.5)),
   ]

struct AuthView: View {
    var body: some View {
        VStack{
            VStack{
                Text("Github Clone")
                    .font(.largeTitle)
                    .bold()
            }
            .frame(maxHeight: .infinity)
           // .background(.red)

            VStack(spacing: 8){
                ForEach(loginOptions){option in
                    makeLoginButton(option: option)
                    
                }
                NavigationLink(
                    destination: {
                        Text("option.title")
                        SignUpView()
                    },
                    label: {
                        ZStack{
                            Text("option.title")
                                .bold()
                                .underline()
                                .foregroundStyle(.gray)
                            
                                .padding()
                                .frame(maxWidth: .infinity)
                            
                            
                                .padding(.horizontal)
                        }
                    }
                )
                Text("[Terms of use](https://apple.com)")
                .font(.footnote)
                    .multilineTextAlignment(.center)
                    .padding(.horizontal)
            }
            .frame(maxHeight: .infinity)
          //  .background(.blue)
        }
    }
    func makeLoginButton(option: LoginAuthOption)-> some View{
        NavigationLink(
        destination: {
            Text(option.title)
        },
        label: {
            ZStack{
                HStack{
                    Image(systemName: "swift")
                    Spacer()
                                   }
                Text(option.title)
                    .bold()
                    .foregroundStyle(option.titleColor)
            }
            .padding()
            .frame(maxWidth: .infinity)
            .background(
            RoundedRectangle(cornerRadius: 16)
                .stroke(option.borderColor, lineWidth: 2)
                .fill(option.backgroundColor)
                .clipped().containerShape(RoundedRectangle(cornerRadius: 16))
            )
            .padding(.horizontal)
            }
        )
        }
    }


#Preview {
    AuthView()
}
