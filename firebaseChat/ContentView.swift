//
//  ContentView.swift
//  firebaseChat
//
//  Created by Jannatun Nahar Papia  on 18/4/22.
//

import SwiftUI

struct ContentView: View {
    
    @State var isLoginMode: Bool = false
    @State var email = ""
    @State var password = ""
    
    
    var body: some View {
        NavigationView {
            ScrollView {
                
                VStack(spacing: 16) {
                Picker(selection: $isLoginMode, label: Text("Picker here")){
                    Text("Login")
                        .tag(true)
                    Text("Create Account")
                        .tag(false)
                }
                .pickerStyle(SegmentedPickerStyle())
             //   .padding()
                    
                    if isLoginMode {
                        Button {
                            
                        }label: {
                            Image(systemName: "person.fill")
                                .font(.system(size: 64))
                                .padding()
                        }
                    }
                //Use two tet filed
                TextField("Email", text: $email)
                        .keyboardType(.emailAddress)
                        .autocapitalization(.none)
          //      TextField("password", text: $password)
                    //password is secure so i use securefiled
                    SecureField("Password", text: $password)
                
                Button {
                    
                } label: {
                    HStack{
                        Spacer()
                        Text("Create Account")
                            .foregroundColor(.white)
                            .padding(.vertical, 10)
                            Spacer()
                    }.background(Color.blue)
                }
                
//                Text("Here is my creation account page")
            }
            }.padding()
                .navigationTitle(isLoginMode ? "Log in" : "Create Account")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
