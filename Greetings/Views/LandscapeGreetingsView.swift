//
//  LandscapeGreetingsView.swift
//  Greetings
//
//  Created by Sherrane Watson on 8/4/23.
//

import SwiftUI

struct LandscapeGreetingsView: View {
    var body: some View {
        ZStack {
            BackgroundView()
            
            HStack {
                
                TitleView(title: "Greetings")
                
                Spacer()
                
                MessagesView(messages:[])
            }
        }
        
    }
}

struct LandscapeGreetingsView_Previews: PreviewProvider {
    static var previews: some View {
        LandscapeGreetingsView()
    }
}
