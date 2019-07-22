//
//  sing.swift
//  RPS
//
//  Created by Fernando on 27/05/2019.
//  Copyright © 2019 Fernando Salvador. All rights reserved.
//

import Foundation
import GameplayKit

let randomChoice = GKRandomDistribution(lowestValue: 0, highestValue: 2)

func randomSign() -> Sign{
    let sign = randomChoice.nextInt()
    if sign == 0{
        return .piedra
    }else if sign == 1{
        return .papel
    }else{
        return.tijera
    }
}

enum Sign{
    case piedra, papel, tijera
}
func usuarioChose(eleccionJugador: String) -> Sign{
    
    if eleccionJugador == "Piedra"{
        return .piedra
    }else if eleccionJugador == "Papel"{
        return .papel
    }else{
        return .tijera
    }
}





