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
    let imageColor: Color
}

var loginOptions: Array<LoginAuthOption> = [
    .init(leadingImageName: "google", title: "Continue with Google", titleColor: .black, backgroundColor: .white, borderColor: .gray.opacity(0.5),imageColor: .black),
    .init(leadingImageName: "meta_", title: "Continue with Meta", titleColor: .white, backgroundColor: .black, borderColor: .gray.opacity(0.5),imageColor: .white),
    .init(leadingImageName: "apple22", title: "Continue with Apple", titleColor: .white, backgroundColor: .blue, borderColor: .gray.opacity(0.5),imageColor: .white),
   ]

struct AuthView: View {
    var body: some View {
        NavigationStack {
            VStack{
                VStack{
                    Text("Github Clone")
                        .font(.largeTitle)
                        .bold()
                }
                .frame(maxHeight: .infinity)
                // .background(.red)
                
                VStack(spacing: 8){
                    ForEach(loginOptions){ option in
                        makeLoginButton(option: option)
                    }
                    NavigationLink(
                        destination: {
                            SignInView()
                        },
                        label: {
                            ZStack{
                                HStack{
                                    Image(systemName: "envelope.fill")
                                        .resizable()
                                        .frame(width: 30, height: 25)
                                        .padding()
                                        .foregroundColor(.white)
                                    Spacer()
                                }
                                Text("Login with your email")
                                    .padding(20)
                                    .bold()
                                    .frame(maxWidth: .infinity)
                                .foregroundColor(.white)}
                                    .background(
                                    RoundedRectangle(cornerRadius: 10)
                                   // .stroke( lineWidth: 2)
                                    .fill(.pink)
                                        .containerShape(RoundedRectangle(cornerRadius: 16))
                                        
                                    )
                                    .padding(.horizontal)
                            
                        }
                    )
                    NavigationLink(
                        destination: {
                            SignUpView()
                        },
                        label: {
                            ZStack{
                                Text("New User? Sign Up ")
                                
                                    .bold()
                                    .underline()
                                    .foregroundStyle(.gray)
                                    .padding()
                                    .frame(maxWidth: .infinity)
                                
                                
                                    .padding(.horizontal)
                            }
                        }
                    )
                    
                    Text("[Terms and policy](https://apple.com)")
                        .font(.footnote)
                        .multilineTextAlignment(.center)
                        .padding(.horizontal)
                }
                .frame(maxHeight: .infinity)
            }
        }
    }
    func makeLoginButton(option: LoginAuthOption)-> some View{
        //        NavigationLink(
        //            destination:  Destination,
        //        )
        
//        NavigationLink(
//            destination: { ProgressView()
//        },
//        label: {
//            ZStack{
//                HStack{
//                    Image(systemName: "swift")
//                    Spacer()
//                }
//                Text(option.title)
//                    .bold()
//                    .foregroundStyle(option.titleColor)
//            }
//            .padding()
//            .frame(maxWidth: .infinity)
//            .background(
//                RoundedRectangle(cornerRadius: 16)
//                    .stroke(option.borderColor, lineWidth: 2)
//                    .fill(option.backgroundColor)
//                    .clipped().containerShape(RoundedRectangle(cornerRadius: 16))
//            )
//           
//            .padding(.horizontal)
//            
//        })
//        .buttonStyle(.plain)
//    }
    
    
            NavigationLink {
                Text(option.title)
                Image(systemName: option.leadingImageName)
            } label: {
                ZStack{
                    HStack{
                        Image(option.leadingImageName)
                            .resizable()
                            .scaledToFit()
                            .foregroundColor(option.imageColor)
                        Spacer()
                                       }
                    Text(option.title)
                        .bold()
                        .foregroundStyle(option.titleColor)
                }
    
                .padding()
                .frame(maxWidth: .infinity)
                .background(
                RoundedRectangle(cornerRadius: 10)
                .stroke(option.borderColor, lineWidth: 2)
                    .fill(option.backgroundColor)
                    .containerShape(RoundedRectangle(cornerRadius: 16))
                )
                .padding(.horizontal)
                }
           .buttonStyle(.plain)
            }
    
}



#Preview {
    AuthView()
}
