//
//  StandUpState.swift
//  State
//
//  Created by Choiwansik on 2023/02/13.
//

import Foundation

internal class StandUpState: State {

    required internal init(player: Player) {
        self.player = player
    }

    internal func standUp() {
        self.player.talk(message: "언제 움직일꺼야?")
    }

    internal func sitDown() {
        self.player.update(state: SitDownState(player: self.player))
        self.player.talk(message: "앉으니 편하고 좋아요")
    }

    internal func walk() {
        self.player.update(speed: 5)
        self.player.update(state: WalkState(player: self.player))
        self.player.talk(message: "걷기는 제2의 생각하기다..")
    }

    internal func run() {
        self.player.update(speed: 10)
        self.player.update(state: RunState(player: self.player))
        self.player.talk(message: "갑자기 뛴다고?")
    }

    internal let player: Player

}

extension StandUpState: Loggable {

    internal var description: String {
        "제자리에 서있음"
    }
    
}
