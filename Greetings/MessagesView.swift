//
//  MessagesView.swift
//  Greetings
//
//  Created by Sherrane Watson on 7/29/23.
//

import SwiftUI

struct MessagesView: View {
    let messages: [DataItemModel]
    
    var body: some View {
        ForEach(messages) { dataItem in
            TextView(text: dataItem.text, color: dataItem.color)
        }
    }
}

struct MessagesView_Previews: PreviewProvider {
    static var previews: some View {
        MessagesView(messages: [])
    }
}
