//
//  Copying.swift
//  XO-game
//
//  Created by Evgeny Kolesnik on 20.06.2020.
//  Copyright © 2020 ek. All rights reserved.
//

import Foundation

protocol Copying {
  init(_ prototype: Self)
}

extension Copying {
  func makeCopy() -> Self {
    return type(of: self).init(self)
  }
}
