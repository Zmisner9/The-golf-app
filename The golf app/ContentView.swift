//
//  ContentView.swift
//  The golf app
//
//  Created by Zachary E. Misner on 4/24/23.
//

import SwiftUI

struct ContentView: View {
    @Environment(\.openURL) var openURL
    var body: some View {
        Button("Visit Apple") {
        openURL(URL (string: "https://www.apple.com")!)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
