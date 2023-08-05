//
//  ContentView.swift
//  Greetings
//
//  Created by Sherrane Watson on 7/29/23.
//

import SwiftUI

/// This is the main view of the Greetings app.
struct GreetingsView: View {
    let messages = [
        DataItemModel (text: "Hello There!",
                       color: Color("green")),
        DataItemModel(text: "Welcome to Swift Programming!",
                      color: Color("gray")),
        DataItemModel(text: "Are you ready to",
                      color: Color("yellow")),
        DataItemModel(text: "Start exploring?",
                      color: Color("red")),
        DataItemModel(text: "BOOM!",
                      color: Color("purple"))
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
        GreetingsView()
    }
}
