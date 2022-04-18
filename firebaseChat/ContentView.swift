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
                Picker(selection: $isLoginMode, label: Text("Picker here")){
                    Text("Login")
                        .tag(true)
                    Text("Create Account")
                        .tag(false)
                }
                .pickerStyle(SegmentedPickerStyle())
                .padding()
                
                
                Button {
                    
                }label: {
                    Image(systemName: "person.fill")
                        .font(.system(size: 64))
                }
                
                //Use two tet filed
                TextField("email", text: $email)
                TextField("password", text: $password)
                
                Text("Here is my creation account page")
            }
            .navigationTitle("Create Account")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
