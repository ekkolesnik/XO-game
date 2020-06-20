//
//  LoggerReceiver.swift
//  XO-game
//
//  Created by Evgeny Kolesnik on 20.06.2020.
//  Copyright © 2020 ek. All rights reserved.
//

import Foundation

class LoggerReceiver {
    
    static let shared: LoggerReceiver = LoggerReceiver()
    
    func log(mesage: String) {
        debugPrint(mesage)
    }
    
}
