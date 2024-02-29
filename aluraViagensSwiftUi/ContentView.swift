//
//  ContentView.swift
//  aluraViagensSwiftUi
//
//  Created by Jennifer Sarah Salomao on 18/02/24.
//

import SwiftUI

struct ContentView: View {
    @Environment(\.horizontalSizeClass) var horizontalSizeClass
    var body: some View {
        
        NavigationView {
            
            GeometryReader { view in
                VStack{
                   
                    HeaderView().frame(width: view.size.width, height: horizontalSizeClass == .compact ? 230 : 370, alignment: .top)
                    
                    List(viagens){ viagem in
                        NavigationLink("", destination: MapView(coordenada: viagem.localizacao).navigationTitle("Localização"))
                        
                     CelulaViagemView(viagem: viagem)
                    }
                    
                }.navigationTitle("")
            }
            
        }.navigationViewStyle(StackNavigationViewStyle())
        
    }
}

#Preview {
    ContentView()
}
