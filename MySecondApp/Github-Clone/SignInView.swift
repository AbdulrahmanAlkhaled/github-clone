//
//  SignInView.swift
//  MySecondApp
//
//  Created by ABDULRAHMAN AL-KHALED on 26/10/2023.
//

import SwiftUI

struct SignInView: View {
    var email: String = ""
    var password: String = ""
    
    var emailError: String = "Email is Empty"
    var passwordError: String = "Password is Empty"
    var body: some View {
        VStack{
          
                TextField("Email", text: .constant(""))
                    .padding()
                    .frame(maxWidth: .infinity)
                    .background(RoundedRectangle(cornerRadius: 16)
                        .stroke(emailError.isEmpty ? .black : .red, lineWidth: 2)
                        .clipShape(RoundedRectangle(cornerRadius: 16))
                    )
                
                if email.isEmpty{
                    Text(emailError)
                        .foregroundStyle(.red)
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .padding(.horizontal)
                    
                    TextField("Password", text: .constant(""))
                        .padding()
                        .frame(maxWidth: .infinity)
                        .background(RoundedRectangle(cornerRadius: 16)
                            .stroke(.blue,lineWidth: 2)
                            .clipShape(RoundedRectangle(cornerRadius: 16))
                        )
                    
            }
            NavigationLink(
                destination: {
                    SignUpView()
                },
                label: {
                    ZStack{
                        Text("Forget Password?")
                            .bold()
                            .underline()
                            .foregroundStyle(.gray)
                            .padding()
                            .frame(maxWidth: .infinity, alignment: .trailing)
                        
                        
                            .padding(.horizontal)
                    }
                }
            )
        }
        .padding(.horizontal)
        
        .navigationTitle("Sign in")
        .navigationBarTitleDisplayMode(.inline)
        Spacer()
    }
}

#Preview {
    SignInView()
}
