//
//  WalkState.swift
//  State
//
//  Created by Choiwansik on 2023/02/13.
//

import Foundation

internal class WalkState: State {

    required internal init(player: Player) {
        self.player = player
    }

    internal func standUp() {
        self.player.update(speed: 0)
        self.player.update(state: StandUpState(player: self.player))
        self.player.talk(message: "멈춰")
    }

    internal func sitDown() {
        self.player.update(speed: 0)
        self.player.update(state: SitDownState(player: self.player))
        self.player.talk(message: "걷다가 앉다니 엉덩이 까진다.")
    }

    internal func walk() {
        self.player.talk(message: "그래 계속 걷자.")
    }

    internal func run() {
        self.player.update(speed: 20)
        self.player.update(state: RunState(player: self.player))
        self.player.talk(message: "걷다가 뛰면 속도가 확 오르지!")
    }

    internal let player: Player

}

extension WalkState: Loggable {

    internal var description: String {
        "걷는 중"
    }

}
