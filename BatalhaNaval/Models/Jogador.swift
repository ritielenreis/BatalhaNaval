//
//  Jogador.swift
//  BatalhaNaval
//
//  Created by Ana Beatriz Lacerda de Queiroz on 05/04/25.
//

import Foundation

class Jogador {
    var tabuleiro: Tabuleiro
    var tirosFeitos: [Int] = []
    
    init(tabuleiro: Tabuleiro = Tabuleiro(), tirosFeitos: [Int]) {
        self.tabuleiro = tabuleiro
        self.tirosFeitos = tirosFeitos
    }
        
    func atirar(id: Int, tabuleiroInimigo: Tabuleiro) -> Bool {
        guard !tirosFeitos.contains(id) else {return false}
        tirosFeitos.append(id)
        return tabuleiroInimigo.atacarCoordenada(id)
    }
    
    func adicionarTiro(tiro: Int) {
            //tirosFeitos.append(tiro)
        }
    
    
}
