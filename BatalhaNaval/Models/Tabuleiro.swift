//
//  Tabuleiro.swift
//  BatalhaNaval
//
//  Created by Ana Beatriz Lacerda de Queiroz on 05/04/25.
//

import Foundation
import Combine

class Tabuleiro: ObservableObject {
    @Published var coordenadas: [Coordenada] = []
    
    init() {
        resetarTabuleiro()
    }

    func resetarTabuleiro() {
        coordenadas = (0..<25).map { Coordenada(id: $0, temNavio: false, foiAtacada: false) }
        //$0 é um atalho para o primeiro. Essa linha criar uma lista de 25 coordenadas, com id variando de 0 a 24
    }

    func posicionarNavio(em id: Int) -> Bool {
        guard coordenadas[id].temNavio == false else { return false }
        coordenadas[id].temNavio = true
        return true
    }

    func atacarCoordenada(id: Int) -> Bool {
        guard coordenadas[id].foiAtacada == false else { return false }
        coordenadas[id].foiAtacada = true
        return coordenadas[id].temNavio
    }

    func todosNaviosDestruidos() -> Bool {
        !coordenadas.contains { $0.temNavio && !$0.foiAtacada }
    }
}

