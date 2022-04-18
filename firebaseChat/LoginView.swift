//
//  ContentView.swift
//  firebaseChat
//
//  Created by Jannatun Nahar Papia  on 18/4/22.
//

import SwiftUI

struct LoginView: View {
    
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
                    
                    if !isLoginMode {
                        Button {
                            
                        }label: {
                            Image(systemName: "person.fill")
                                .font(.system(size: 64))
                                .padding()
                        }
                    }
                    
                    //MARK: use group for two textfield
                    Group {
                        TextField("Email", text: $email)
                            .keyboardType(.emailAddress)
                            .autocapitalization(.none)
                        SecureField("Password", text: $password)
                    }
                    .padding(12)
                    .background(Color.white)
                    //Use two tet filed
                    //                TextField("Email", text: $email)
                    //                        .keyboardType(.emailAddress)
                    //                        .autocapitalization(.none)
                    //                        .padding(12)
                    //                        .background(Color.white)
                    //          //      TextField("password", text: $password)
                    //                    //password is secure so i use securefiled
                    //                    SecureField("Password", text: $password)
                    //                        .padding(12)
                    //                        .background(Color.white)
                    
                    Button {
                        handleAction()
                    } label: {
                        HStack{
                            Spacer()
                            Text(isLoginMode ? "Log in" : "Create Account")
                                .foregroundColor(.white)
                                .padding(.vertical, 10)
                                .font(.system(size: 14, weight: .semibold))
                            Spacer()
                        }.background(Color.green)
                    }
                    
                    //                Text("Here is my creation account page")
                }
                .padding()
            }
            .navigationTitle(isLoginMode ? "Log in" : "Create Account")
            .background(Color(.init(white: 0, alpha: 0.05))
                            .ignoresSafeArea())
        }
    }
    //use func for handle action
    private func handleAction() {
        if isLoginMode {
            print("Should log into Firebase existing credentials")
        } else {
            print("Register a new account inside of Firebade Auth and then store image in Storage somehow....")
        }
    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
