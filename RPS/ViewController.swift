//
//  ViewController.swift
//  RPS
//
//  Created by Fernando on 27/05/2019.
//  Copyright © 2019 Fernando Salvador. All rights reserved.
//

import UIKit
var election:Sign = .piedra
var appElection:Sign = randomSign()
var resultadoFinal:GameState = comparacion(app: appElection, player: election)
var textoResultado:String = ""


class ViewController: UIViewController {


    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBOutlet weak var App: UILabel!
    @IBOutlet weak var GameState: UILabel!
    @IBOutlet weak var Piedra: UIButton!
    @IBOutlet weak var Papel: UIButton!
    @IBOutlet weak var Tijera: UIButton!
    @IBOutlet weak var Reset: UIButton!
    
    
    
    @IBAction func Piedra(_ sender: UIButton) {
        election = usuarioChose(eleccionJugador: "Piedra")
        appElection = randomSign()
        resultadoFinal = comparacion(app: appElection, player: election)
        textoResultado = resultado(final: resultadoFinal)
        Papel.isHidden = true
        Tijera.isHidden = true
        let imagenRobot = robotElection(robot: appElection)
        App.text = imagenRobot
        GameState.text = textoResultado
        
    }
    
    @IBAction func Papel(_ sender: UIButton) {
        election = usuarioChose(eleccionJugador: "Papel")
        appElection = randomSign()
        resultadoFinal = comparacion(app: appElection, player: election)
        textoResultado = resultado(final: resultadoFinal)
        Piedra.isHidden = true
        Tijera.isHidden = true
        let imagenRobot = robotElection(robot: appElection)
        App.text = imagenRobot
        GameState.text = textoResultado
    }
    
    @IBAction func Tijera(_ sender: UIButton) {
        election = usuarioChose(eleccionJugador: "Tijera")
        appElection = randomSign()
        resultadoFinal = comparacion(app: appElection, player: election)
        textoResultado = resultado(final: resultadoFinal)
        Papel.isHidden = true
        Piedra.isHidden = true
        let imagenRobot = robotElection(robot: appElection)
        App.text = imagenRobot
        GameState.text = textoResultado
    }
    
    @IBAction func Reset(_ sender: UIButton) {
        Piedra.isHidden = false
        Papel.isHidden = false
        Tijera.isHidden = false
        App.text = "🤖"
        GameState.text = "Piedra, Papel o Tijera"
        
    }
}

