//
//  State.swift
//  State
//
//  Created by Choiwansik on 2023/02/13.
//

import Foundation

internal protocol State: Loggable {

    init(player: Player)

    func standUp()
    func sitDown()
    func walk()
    func run()

    var player: Player { get }

}

internal protocol Loggable {

    var description: String { get }

}
