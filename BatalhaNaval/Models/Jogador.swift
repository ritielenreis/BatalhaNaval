//
//  Jogador.swift
//  BatalhaNaval
//
//  Created by Ana Beatriz Lacerda de Queiroz on 05/04/25.
//

import Foundation

class Jogador {
    var tabuleiroProprio: Tabuleiro
    var tirosFeitos: [Int] = []
    
    init(tabuleiroProprio: Tabuleiro = Tabuleiro(), tirosFeitos: [Int]) {
        self.tabuleiroProprio = tabuleiroProprio
        self.tirosFeitos = tirosFeitos
    }
        
    func atirar(id: Int, tabuleiroInimigo: Tabuleiro) -> Bool {
        guard !tirosFeitos.contains(id) else {return false}
        tirosFeitos.append(id)
        let resultado = tabuleiroInimigo.atacarCoordenada(id: id)
        return resultado
    }
    
    func adicionarTiro(tiro: Int) {
        tirosFeitos.append(tiro)
        }
    
    
}
