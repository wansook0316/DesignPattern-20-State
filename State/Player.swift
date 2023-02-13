//
//  Player.swift
//  State
//
//  Created by Choiwansik on 2023/02/13.
//

import Foundation

public class Player {

    private(set) var speed: Int
    private(set) var state: State?

    internal init(speed: Int) {
        self.speed = speed
    }

    internal func update(state: State) {
        self.state = state
    }

    internal func update(speed: Int) {
        self.speed = speed
    }

    internal func talk(message: String) {
        print("플레이어: \(message)")
    }

}
