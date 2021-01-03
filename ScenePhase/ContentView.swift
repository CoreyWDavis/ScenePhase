//
//  ContentView.swift
//  ScenePhase
//
//  Created by Corey Davis on 1/1/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack(spacing: 8) {
            Text("ScenePhase")
                .bold()
            Text("Check the Xcode console for foreground and background messages.")
                .foregroundColor(.secondary)
        }
        .padding([.leading, .trailing], 60)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
