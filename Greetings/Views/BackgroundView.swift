//
//  BackgroundView.swift
//  Greetings
//
//  Created by Sherrane Watson on 7/29/23.
//

import SwiftUI


/// This is the background view which contains a linear gradient.
struct BackgroundView: View {
    
    var body: some View {
        LinearGradient(colors: [.red, .yellow, .blue, .purple],
                       startPoint: .topLeading,
                       endPoint: .bottomTrailing)
        .opacity(0.8)
        .ignoresSafeArea()
        
        Spacer()
    }
}


struct BackgroundView_Previews: PreviewProvider {
    static var previews: some View {
        BackgroundView()
    }
}
