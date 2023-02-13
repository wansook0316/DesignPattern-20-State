//
//  RunState.swift
//  State
//
//  Created by Choiwansik on 2023/02/13.
//

import Foundation

internal class RunState: State {

    required internal init(player: Player) {
        self.player = player
    }

    internal func standUp() {
        self.player.update(speed: 0)
        self.player.update(state: StandUpState(player: self.player))
        self.player.talk(message: "뛰다가 섰더니 무릎이 아파")
    }

    internal func sitDown() {
        self.player.update(speed: 0)
        self.player.update(state: SitDownState(player: self.player))
        self.player.talk(message: "뛰다가 앉으라고? 엉덩이 다까졌다.")
    }

    internal func walk() {
        self.player.update(speed: 8)
        self.player.update(state: WalkState(player: self.player))
        self.player.talk(message: "속도를 줄일게")
    }

    internal func run() {
        self.player.update(speed: self.player.speed + 2)
        self.player.talk(message: "더 빨리 뛰라는 소리지?")
    }

    internal let player: Player

}

extension RunState: Loggable {

    internal var description: String {
        "뛰는 중"
    }

}
