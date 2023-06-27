//
//  Person.swift
//  GamePlayerStatus
//
//  Created by 能登 要 on 2023/06/28.
//

import Foundation

import Foundation
import Observation

enum Status: CaseIterable {
    case sleep
    case active
    case playingGame
    
    var description: String {
        switch self {
        case .active: "アクティブ"
        case .sleep: "睡眠"
        case .playingGame: "ゲーム中"
        }
    }
}

final class Person: ObservableObject {
    @Published var status: Status = .active
}

@Observable final class NouvellePerson {
    var status: Status = .active
}

@Observable struct NouvellePerson2 {
    var status: Status = .active
}
