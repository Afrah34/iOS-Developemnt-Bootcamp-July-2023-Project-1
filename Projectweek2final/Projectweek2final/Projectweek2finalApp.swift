//
//  Projectweek2finalApp.swift
//  Projectweek2final
//
//  Created by Afrah Faisal on 18/01/1445 AH.
//

import SwiftUI

@main
struct Projectweek2finalApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
            AddNewTaskView( selectOption1: .HIGH, selectOption2: .Backlog)
            TaskView()
        }
    }
}
