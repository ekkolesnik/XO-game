//
//  GameSettings.swift
//  XO-game
//
//  Created by Evgeny Kolesnik on 20.06.2020.
//  Copyright © 2020 ek. All rights reserved.
//

import Foundation

struct GameSettings {
    
    let gameMode: GameMode
    let gameType: GameType
    
    init() {
        self.gameMode = GameMode.oneMove
        self.gameType = GameType.pvp
    }
    
    init(mode: GameMode, type: GameType) {
        self.gameMode = mode
        self.gameType = type
    }
}
