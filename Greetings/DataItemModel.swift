//
//  DataItemModel.swift
//  Greetings
//
//  Created by Sherrane Watson on 7/29/23.
//

import SwiftUI

/// This is the data model of the messages that will appear in the app. It conrains a text string and a color. Moreover, it inherits from the identifiable protocol. 
struct DataItemModel: Identifiable {
    let id = UUID()
    let text: String
    let color: Color
}
