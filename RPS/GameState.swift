//
//  GameState.swift
//  RPS
//
//  Created by Fernando on 27/05/2019.
//  Copyright © 2019 Fernando Salvador. All rights reserved.
//

import Foundation
import UIKit


enum GameState{
    case inicio, victoria, derrota, empate
}

func comparacion(app:Sign, player:Sign) -> GameState{
    switch app {
    case .piedra:
        if app == player{
            return .empate
        }else if player == .papel{
            return .derrota
        }else{
            return .victoria
        }
    case .papel:
        if app == player{
            return .empate
        }else if player == .piedra{
            return .victoria
        }else{
            return .derrota
        }
    case .tijera:
        if app == player{
            return .empate
        }else if player == .piedra{
            return .derrota
        }else{
            return .victoria
        }
    }
}
func robotElection(robot:Sign) -> String{
    if robot == .papel{
        return "🤚"
    }else if robot == .piedra{
        return "👊"
    }else{
        return "✌️"
    }
}

func resultado(final:GameState) -> String{
    if final == .victoria{
        return "Perdiste Loco!!"
    }else if final == .derrota{
        return "Ganaste Campeòn!!"
    }else{
        return "Tenemos un Empate"
    }
}
