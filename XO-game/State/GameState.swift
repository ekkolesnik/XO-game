//
//  GameState.swift
//  XO-game
//
//  Created by Evgeny Kolesnik on 20.06.2020.
//  Copyright © 2020 ek. All rights reserved.
//

import Foundation

protocol GameState {
    var isCompleted: Bool { get }
    var inputState: GameViewInput { set get }
    func begin()
    func addMark(at position: GameboardPosition)
}
