//
//  MoveCommand.swift
//  XO-game
//
//  Created by Evgeny Kolesnik on 20.06.2020.
//  Copyright © 2020 ek. All rights reserved.
//

import Foundation

class MoveCommand {
    
    let position: GameboardPosition
    let player: Player
    let gameboard: Gameboard
    let gameboardView: GameboardView
    
    init(position: GameboardPosition, player: Player, gameboard: Gameboard, gameboardView: GameboardView) {
        self.position = position
        self.player = player
        self.gameboard = gameboard
        self.gameboardView = gameboardView
    }
    
    func execute() {
        self.gameboard.setPlayer(player, at: position)
        let markView = self.player.markViewPrototype
        self.gameboardView.placeSurelyMarkView(markView, at: self.position)
    }
    
}
