//
//  GameFinishedState.swift
//  XO-game
//
//  Created by Evgeny Kolesnik on 20.06.2020.
//  Copyright © 2020 ek. All rights reserved.
//

import Foundation

class GameFinishedState: GameState {
    
    var isCompleted: Bool = false
    let winner: Player?
    var inputState: GameViewInput
    
    init(winner: Player?, inputState: GameViewInput) {
        self.winner = winner
        self.inputState = inputState
    }
    
    func begin() {
        self.inputState.firstPlayerTurnLabel(hide: true)
        self.inputState.secondPlayerTurnLabel(hide: true)
        self.inputState.incorrectMoveLabel(hide: true)
        self.inputState.winnerLabel(hide: false)
        
        var text = "No winner"
        if let winner = self.winner {
            text = winner.winnerText()
        }
        self.inputState.winnerLabel(text: text)
    }
    
    func addMark(at position: GameboardPosition) {}
}
