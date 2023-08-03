//
//  BackgroundView.swift
//  Greetings
//
//  Created by Sherrane Watson on 7/29/23.
//

import SwiftUI

struct BackgroundView: View {
    
    var body: some View {
        LinearGradient(colors: [.red, .yellow, .blue, .purple],
                       startPoint: .topLeading,
                       endPoint: .bottomTrailing)
       
            .ignoresSafeArea()
    }
}

struct BackgroundView_Previews: PreviewProvider {
    static var previews: some View {
        BackgroundView()
    }
}
