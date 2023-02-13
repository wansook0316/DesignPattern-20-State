//
//  main.swift
//  State
//
//  Created by Choiwansik on 2023/02/13.
//

import Foundation

internal func main() {
    
    let player = Player(speed: 0)
    player.update(state: StandUpState(player: player))

    while true {
        print("플레이어 상태: \(player.state?.description ?? "")")
        print("속도: \(player.speed) km/h")
        print("1: 서기, 2: 앉기, 3: 걷기, 4: 뛰기, 5: 종료")
        print("")

        let input = readLine()
        guard let first = input?.components(separatedBy: " ").first,
              let command = Int(first) else {
            return
        }

        switch command {
        case 1:
            player.state?.standUp()
        case 2:
            player.state?.sitDown()
        case 3:
            player.state?.walk()
        case 4:
            player.state?.run()
        default:
            print("종료합니다.")
            return
        }
    }

}

main()
