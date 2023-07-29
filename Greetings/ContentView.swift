//
//  ContentView.swift
//  Greetings
//
//  Created by Sherrane Watson on 7/29/23.
//

import SwiftUI

struct ContentView: View {
    let messages = [
        DataItemModel(text: "Hello There!",
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
        
        VStack(alignment: .leading) {
            
            VStack {
                Text("Greetings")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                Text("Exploring iOS 16 programming")
                    .font(.headline)
                    .fontWeight(.thin)
            }
            
            .padding()
            
            ForEach(messages) { dataItem in
                TextView(text: dataItem.text, color: dataItem.color)
            }
        }
    }
}

struct TextView: View {
    let text: String
    let color: Color
    var body: some View {
        Text(text)
            .font(.title2)
            .fontWeight(.semibold)
            .foregroundColor(Color.white)
            .padding()
            .background(color.opacity(0.8))
            .cornerRadius(20.0)
            .shadow(color: color.opacity(0.4), radius: 5, x: 10, y: 10)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
