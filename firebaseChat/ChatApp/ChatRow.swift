//
//  ChatRow.swift
//  firebaseChat
//
//  Created by Jannatun Nahar Papia  on 20/4/22.
//

import SwiftUI

struct ChatRow: View {
    var body: some View {
        HStack(spacing: 20) {
            Image("nazmul1")
                .resizable()
                .frame(width: 70, height: 70)
                .clipShape(Circle())
                
            ZStack {
                VStack(alignment: .leading, spacing: 5) {
                HStack  {
                    Text("Nazmul Hasan")
                        .bold()
                    
                    Spacer()
                    
                    Text("20/04/2022")
                }
                    HStack{
                        Text("i need your love nazmul")
                            .foregroundColor(.gray)
                            .lineLimit(2)
                            .frame(width: 50, alignment: .top)
                            .frame(maxWidth: .infinity, alignment: .leading)
                            .padding(.trailing, 40)
                    }
                }
            }
            
        }
        .frame(height: 80)
    }
}

struct ChatRow_Previews: PreviewProvider {
    static var previews: some View {
        ChatRow()
    }
}
