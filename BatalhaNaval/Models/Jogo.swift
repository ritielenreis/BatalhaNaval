//
//  Jogo.swift
//  BatalhaNaval
//
//  Created by Ana Beatriz Lacerda de Queiroz on 05/04/25.
//

import Foundation

class Jogo: ObservableObject, Hashable {
    @Published var jogador1: Jogador
    @Published var jogador2: Jogador
    @Published var jogadorAtual: Int = 1 // 1 ou 2
    @Published var jogoFinalizado: Bool = false
    @Published var vencedor: String? = nil
    @Published var naviosRestantes: Int = 5
    @Published var tabuleiroDefinido: Bool = false
    
    
    var id = UUID()
    
    init(jogador1: Jogador, jogador2: Jogador, jogadorAtual: Int, jogoFinalizado: Bool, vencedor: String? = nil, naviosRestantes: Int, tabuleiroDefinido: Bool) {
        self.jogador1 = jogador1
        self.jogador2 = jogador2
        self.jogadorAtual = jogadorAtual
        self.jogoFinalizado = jogoFinalizado
        self.vencedor = vencedor
        self.naviosRestantes = naviosRestantes
        self.tabuleiroDefinido = tabuleiroDefinido
    }
    
    //Funcoes que tornam a classe Jogo Hashble (iterável)
    static func == (lhs: Jogo, rhs: Jogo) -> Bool {
            return lhs.id == rhs.id // Comparando pelo ID único
        }
        
    func hash(into hasher: inout Hasher) {
        hasher.combine(id) // Usando o ID único para gerar o hash
    }
    
    //equivale á Jogo.definirNavios
    func posicionarNavioJogador(em id: Int){
        if naviosRestantes > 0 && jogador1.tabuleiroProprio.posicionarNavio(em: id) {
            naviosRestantes -= 1
        }

        if naviosRestantes == 0 {
            tabuleiroDefinido = true
        }
    }

    func reiniciarJogo() {
        jogador1 = Jogador(tabuleiroProprio: Tabuleiro(), tirosFeitos: [])
        jogador2 = Jogador(tabuleiroProprio: Tabuleiro(), tirosFeitos: [])
        jogadorAtual = 1
        jogoFinalizado = false
        vencedor = nil
        naviosRestantes = 5
        tabuleiroDefinido = false
    }

    
    func realizarJogada(em id: Int){
        
        //adicionar logica aqui
        alternarTurno()
        checarVencedor()
    }
    
    func alternarTurno() {
        jogadorAtual = jogadorAtual == 1 ? 2 : 1 // se o jogador atual é o 1, passa a ser o 2 e vice e versa
    }
    func checarVencedor(){
        //se jogador1.tabuleiroInimigo.todosNaviosDestruidos = true, vencedor = jogador1
        // senao se jogador12.tabuleiroInimigo.todosNaviosDestruidos = true, vencedor = jogador2
        //senao continuar jogo
    }
}
