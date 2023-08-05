//
//  TextView.swift
//  Greetings
//
//  Created by Sherrane Watson on 7/29/23.
//

import SwiftUI

struct TextView: View {
    let text: LocalizedStringKey
    @State var color: Color
    
    let colors: [Color] = [
        .red, .pink, .yellow, .purple, .blue, .gray,
        Color(red: 0.5, green: 0.7, blue: 240/255),
        Color(red: 0.9, green: 0.6, blue: 240/255),
        Color(red: 0.25, green: 0.3, blue: 240/255)
    ]
    
    var body: some View {
        Text(text)
            .font(.title2)
            .fontWeight(.semibold)
            .foregroundColor(Color.white)
            .padding()
            .background(color.opacity(0.8))
            .cornerRadius(20.0)
            .shadow(color: color.opacity(0.4), radius: 5, x: 10, y: 10)
            .onTapGesture {
            let length = colors.count
            let randomIndex = Int.random(in: 0..<length)
            color = colors[randomIndex]
        }
    }
}
    


struct TextView_Previews: PreviewProvider {
    static var previews: some View {
        TextView(text: "WOW", color: .blue)
    }
}
