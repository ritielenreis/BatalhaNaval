//
//  BatalhaNavalApp.swift
//  BatalhaNaval
//
//  Created by Ana Beatriz Lacerda de Queiroz on 05/04/25.
//

import SwiftUI

@main
struct BatalhaNavalApp: App {
    var body: some Scene {
        WindowGroup {
            Menu(jogo: Jogo(jogador1: Jogador(tabuleiro: Tabuleiro(), tirosFeitos: []), jogador2: Jogador(tabuleiro: Tabuleiro(), tirosFeitos: []), jogadorAtual: 1, jogoFinalizado: false, naviosRestantes: 5, tabuleiroDefinido: false))
        }
    }
}
