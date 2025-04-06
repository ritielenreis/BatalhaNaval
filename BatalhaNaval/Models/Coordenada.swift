//
//  Coordenada.swift
//  BatalhaNaval
//
//  Created by Ana Beatriz Lacerda de Queiroz on 05/04/25.
//

import Foundation
struct Coordenada: Identifiable {
    var id: Int       // 0 a 24 (posição no grid 5x5)
    var temNavio: Bool
    var foiAtacada: Bool
    
    init(id: Int, temNavio: Bool, foiAtacada: Bool) {
        self.id = id
        self.temNavio = temNavio
        self.foiAtacada = foiAtacada
    }
}
