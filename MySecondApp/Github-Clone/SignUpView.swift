//
//  SignUpView.swift
//  MySecondApp
//
//  Created by ABDULRAHMAN AL-KHALED on 26/10/2023.
//

import SwiftUI

struct SignUpView: View {
    let name: String = " "
    let email: String = " "
    let Password: String = " "
    let confirmPassword: String = " "
    
    let nameError: String = "name is Empty"
    let emailError: String = " "
    let confirmPasswordError: String = " "
   
    var body: some View {
        VStack{
            TextField("Name", text: .constant(""))
                .padding()
                .frame(maxWidth: .infinity)
                .background(
            RoundedRectangle(cornerRadius: 16)
                .stroke(nameError.isEmpty ? .black : .red,lineWidth: 2)
                .fill()
                .clipShape(RoundedRectangle(cornerRadius: 16))
                
            )
            .padding(.horizontal)
            if name.isEmpty{
                Text(nameError)
                    .foregroundStyle(.red)
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding(.horizontal)
            }
        
            TextField("Email", text: .constant(""))
                .padding()
                .frame(maxWidth: .infinity)
                .background(
            RoundedRectangle(cornerRadius: 16)
                .stroke(lineWidth: 2)
                .fill()
                .clipShape(RoundedRectangle(cornerRadius: 16))
            )
            .padding(.horizontal)
            SecureField("Password", text: .constant(""))
                .padding()
                .frame(maxWidth: .infinity)
                .background(
            RoundedRectangle(cornerRadius: 16)
                .stroke(lineWidth: 2)
                .fill(.blue)
                .clipShape(RoundedRectangle(cornerRadius: 16))
                
            )
            .padding(.horizontal)
            
            SecureField("confirm password", text: .constant(""))
                .padding()
                .frame(maxWidth: .infinity)
                .background(
            RoundedRectangle(cornerRadius: 16)
                .stroke(lineWidth: 2)
                .fill(.blue)
                .clipShape(RoundedRectangle(cornerRadius: 16))
                
            )
            .padding(.horizontal)
            Spacer()
        }  
        .navigationTitle("Sign up")
        .navigationBarTitleDisplayMode(.inline)
    }
    
}

#Preview {
    SignUpView()
}
