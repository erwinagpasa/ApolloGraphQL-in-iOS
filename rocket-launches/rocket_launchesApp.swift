//
//  rocket_launchesApp.swift
//  rocket-launches
//
//  Created by Developer on 21/10/2023.
//

import SwiftUI

@main
struct rocket_launchesApp: App {
  @StateObject var launViewModel = LaunchViewModel()
  
    var body: some Scene {
        WindowGroup {
            ContentView()
            .environmentObject(launViewModel)
        }
    }
}
