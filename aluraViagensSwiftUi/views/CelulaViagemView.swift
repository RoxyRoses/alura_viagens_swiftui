//
//  CelulaViagemView.swift
//  aluraViagensSwiftUi
//
//  Created by Jennifer Sarah Salomao on 25/02/24.
//

import SwiftUI

struct CelulaViagemView: View {
    
    @Environment(\.horizontalSizeClass) var horizontalSizeClass
    
    var viagem: Viagem
    
    var body: some View {
        VStack(alignment: .leading){
            
            Text(viagem.titulo).font(.custom("Avenir", size: horizontalSizeClass == .compact ? 14 : 24))
            Image(viagem.imagem)
            .resizable()
            .aspectRatio(contentMode: /*@START_MENU_TOKEN@*/.fill/*@END_MENU_TOKEN@*/)
            .frame(height: horizontalSizeClass == .compact ? 125 : 200)
            .clipped()
            HStack{
                Text(viagem.quantidadeDeDias).font(.custom("Avenir", size: horizontalSizeClass == .compact ? 14 : 24))
                Spacer()
                Text(viagem.valor).font(.custom("Avenir", size: horizontalSizeClass == .compact ? 14: 24))
            }
        }
    }
}

#Preview {
    CelulaViagemView(viagem: viagens[0]).previewLayout(.fixed(width: 350 , height: 200))
}
