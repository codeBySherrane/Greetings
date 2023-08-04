//
//  TitleView.swift
//  Greetings
//
//  Created by Sherrane Watson on 7/29/23.
//

import SwiftUI


/// This contains the app title and a randomly changing subtitle upon tapping the subtitle and a colorful circle that rotates on tap.
struct TitleView: View {
    let title: String
    
    
    @State var isRotated: Bool = false
    @State var subtitleIndex: Int = 3
    
    let subtitle: [String] = [
    "Exploring iOS Development",
    "Testing Animations",
    "Programming recipes",
    "A quest for knowledge"]
    
    var body: some View {
        HStack {
            VStack(alignment: .leading, spacing: .zero) {
                Text(title)
                    .font(.largeTitle)
                    .fontWeight(.bold)
                Text(subtitle[subtitleIndex])
                    .font(.headline)
                    .fontWeight(.thin)
            }.padding()
                .onTapGesture {
                    subtitleIndex = Int.random(in: 0..<subtitle.count)
                }
            
            Spacer()
            
            Circle()
                .strokeBorder(AngularGradient(gradient: Gradient(colors: [.pink, .purple, .yellow]),
                                              center: .center,
                                              angle: .zero),
                              lineWidth: 15.0)
                .rotationEffect( isRotated ? .zero: .degrees(360))
                .frame(maxWidth: 70, maxHeight: 70)
                .onTapGesture {
                    withAnimation {
                        isRotated.toggle()
                    }
                }
                .padding()
        }
    }
}

struct TitleView_Previews: PreviewProvider {
    static var previews: some View {
        TitleView(title: "Greetings")
    }
}
