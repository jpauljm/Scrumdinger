//
//  ScrumdingerApp.swift
//  Scrumdinger
//
//  Created by Jean Paul on 12/05/23.
//

import SwiftUI

@main
struct ScrumdingerApp: App {
    var body: some Scene {
        WindowGroup {
            ScrumsView(scrums: DailyScrum.sampleData)
        }
    }
}
