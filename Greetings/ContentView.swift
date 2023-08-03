//
//  ContentView.swift
//  Greetings
//
//  Created by Sherrane Watson on 7/29/23.
//

import SwiftUI

struct ContentView: View {
    let messages = [
        DataItemModel (text: "Hello There!",
                       color: .green),
        DataItemModel(text: "Welcome to Swift Programming!",
                      color: .gray),
        DataItemModel(text: "Are you ready to",
                      color: .yellow),
        DataItemModel(text: "Start exploring?",
                      color: .red),
        DataItemModel(text: "BOOOOOOM!",
                      color: .purple)
    ]
    
    var body: some View {
        ZStack {
            BackgroundView()
            
            VStack(alignment: .leading) {
                
                TitleView(title: "Greetings")
                
                Spacer()
                
                MessagesView(messages: messages)
                
                Spacer()
                Spacer()
            }
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
