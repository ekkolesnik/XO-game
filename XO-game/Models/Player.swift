//
//  Player.swift
//  XO-game
//
//  Created by Evgeny Kolesnik on 20.06.2020.
//  Copyright © 2020 ek. All rights reserved.
//

import Foundation

public enum Player: CaseIterable {
    case first
    case second
    
    var next: Player {
        switch self {
        case .first: return .second
        case .second: return .first
        }
    }
    
    var markViewPrototype: MarkView {
        switch self {
        case .first:
            return XView()
        case .second:
            return OView()
        }
    }
    
    func winnerText() -> String {
        var text = "No winner"
        switch self {
        case .first:
            text = "First player win"
        case .second:
            text = "Second player win"
        }
        
        return text
    }
}
