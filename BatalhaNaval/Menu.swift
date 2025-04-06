//
//  ContentView.swift
//  BatalhaNaval
//
//  Created by Ana Beatriz Lacerda de Queiroz on 05/04/25.
//

import SwiftUI

struct Menu: View {
    @ObservedObject var jogo: Jogo

    let columns = Array(repeating: GridItem(.flexible()), count: 5)

    var body: some View {
        NavigationStack{
            VStack(spacing: 16) {
                Text("Posicione seus Submarinos")
                    .font(.title2)
                
                Text("Restantes: \(jogo.naviosRestantes)")
                    .font(.subheadline)
                
                LazyVGrid(columns: columns, spacing: 5) {
                    ForEach(jogo.jogador1.tabuleiroProprio.coordenadas) { coord in
                        Button(action: {
                            jogo.posicionarNavioJogador(em: coord.id)
                            
                        }) {
                            Rectangle()
                                .foregroundColor(coord.temNavio ? .blue : .gray)
                                .frame(width: 50, height: 50)
                                .cornerRadius(8)
                        }
                        .disabled(coord.temNavio || jogo.naviosRestantes == 0)
                    }
                }
                
                if jogo.tabuleiroDefinido {
                    NavigationLink(destination: GameView(jogo: jogo)) {
                        Text("Iniciar Jogo")
                            .padding()
                            .background(Color.green)
                            .foregroundColor(.white)
                            .cornerRadius(10)
                    }
                }
            }
            .padding()
        }
    }
}

#Preview {
    Menu(jogo: Jogo(jogador1: Jogador(tabuleiroProprio: Tabuleiro(), tirosFeitos: []), jogador2: Jogador(tabuleiroProprio: Tabuleiro(), tirosFeitos: []), jogadorAtual: 1, jogoFinalizado: false, naviosRestantes: 5, tabuleiroDefinido: false))
}

