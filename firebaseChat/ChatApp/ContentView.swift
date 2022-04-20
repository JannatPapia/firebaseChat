//
//  ContentView.swift
//  firebaseChat
//
//  Created by Jannatun Nahar Papia  on 20/4/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
        List {
            ForEach(0 ..< 10) { i in
                ChatRow()
  //              Text(String(i))
            }
        }
        .listStyle(PlainListStyle())
        .navigationTitle("Chats")
        .navigationBarItems(trailing: Button(action: {})
            {
                Image(systemName: "square.and.pencil")
            })
    }
}
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
