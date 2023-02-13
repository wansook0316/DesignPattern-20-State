//
//  SitDownState.swift
//  State
//
//  Created by Choiwansik on 2023/02/13.
//

import Foundation

internal class SitDownState: State {

    required internal init(player: Player) {
        self.player = player
    }

    internal func standUp() {
        self.player.update(state: StandUpState(player: self.player))
        self.player.talk(message: "일어나자..")
    }

    internal func sitDown() {
        self.player.talk(message: "얼마나 오래 앉아 있을 생각이야")
    }

    internal func walk() {
        self.player.update(state: StandUpState(player: self.player))
        self.player.talk(message: "앉아서 어떻게 걷니 일단 일어나자.")
    }

    internal func run() {
        self.player.update(state: StandUpState(player: self.player))
        self.player.talk(message: "앉아서 어떻게 뛰니 일단 일어나자.")
    }

    internal let player: Player

}

extension SitDownState: Loggable {

    internal var description: String {
        "앉아있음"
    }

}
