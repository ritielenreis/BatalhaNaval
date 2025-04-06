//
//  Jogador.swift
//  BatalhaNaval
//
//  Created by Ana Beatriz Lacerda de Queiroz on 05/04/25.
//

import Foundation

class Jogador {
    var tabuleiroProprio: Tabuleiro
    var tabuleiroInimigo: Tabuleiro
    var tirosFeitos: [Int] = []
    
    init(tabuleiroProprio: Tabuleiro = Tabuleiro(), tabuleiroInimigo: Tabuleiro = Tabuleiro(), tirosFeitos: [Int]) {
        self.tabuleiroProprio = tabuleiroProprio
        self.tabuleiroInimigo = tabuleiroInimigo
        
        self.tirosFeitos = tirosFeitos
    }
    func atirar(id: Int) -> Bool {
        guard !tirosFeitos.contains(id) else {return false}//se Tiros feitos nao contem o id, o tiro é adicionado á lista. Se contem o pedido é recusado.
        tirosFeitos.append(id)
        let resultado = tabuleiroInimigo.atacarCoordenada(id: id)
        return resultado
    }
    
    //VERIFICAR: criei essa funcao durante a resolucao de um bug, mas acho que agr nao precisa mais
    func adicionarTiro(tiro: Int) {
        tirosFeitos.append(tiro)
        }
    
    func verificarTabuleiro() -> Bool{
        //ver funcao desse método
        //adicionar codigo correspondente
        return true
    }
    
    func colocarNavios(){
        //Esse metodo está Jogo() para conseguirmos definir fim do turno ao marcar 5 navios
    }
    
    
}
