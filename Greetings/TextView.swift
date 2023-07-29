//
//  TextView.swift
//  Greetings
//
//  Created by Sherrane Watson on 7/29/23.
//

import SwiftUI

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

struct TextView_Previews: PreviewProvider {
    static var previews: some View {
        TextView(text: "WOW", color: .blue)
    }
}
