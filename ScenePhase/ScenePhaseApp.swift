//
//  ScenePhaseApp.swift
//  ScenePhase
//
//  Created by Corey Davis on 12/31/20.
//

import SwiftUI

@main
struct ScenePhaseApp: App {
    @Environment(\.scenePhase) var scenePhase

    var body: some Scene {
        WindowGroup {
            ContentView()
                .onReceive(NotificationCenter.default.publisher(for: UIApplication.didBecomeActiveNotification)) { (_) in
                    print("UIApplication: active")
                }
                .onReceive(NotificationCenter.default.publisher(for: UIApplication.willResignActiveNotification)) { (_) in
                    print("UIApplication: background")
                }
        }
        .onChange(of: scenePhase) { (phase) in
            switch phase {
            case .active:
                print("ScenePhase: Active")
                AppManager.shared.isActive = true
            case .background:
                print("ScenePhase: Background")
                AppManager.shared.isActive = false
            case .inactive:
                print("ScenePhase: inactive entering \(AppManager.shared.isActive ? "background" : "foreground")")
            @unknown default: print("ScenePhase: unexpected state")
            }
        }
    }
}
