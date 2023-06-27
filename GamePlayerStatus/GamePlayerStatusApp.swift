//
//  GamePlayerStatusApp.swift
//  GamePlayerStatus
//
//  Created by 能登 要 on 2023/06/28.
//

import SwiftUI

@main
struct ObservationTestApp: App {
    @StateObject var person = Person()
    let nouvellePerson = NouvellePerson()
    let nouvellePerson2 = NouvellePerson2()
    
    var body: some Scene {
        WindowGroup {
            ContentView(
                person: self.person,
                nouvellePerson: self.nouvellePerson,
                nouvellePerson2: self.nouvellePerson2
            )
        }
    }
}
