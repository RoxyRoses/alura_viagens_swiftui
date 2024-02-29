//
//  HeaderView.swift
//  aluraViagensSwiftUi
//
//  Created by Jennifer Sarah Salomao on 25/02/24.
//

import SwiftUI

struct HeaderView: View {
    @Environment(\.horizontalSizeClass) var horizontalSizeClass
    var body: some View {
        
        GeometryReader { view in
            VStack{
                VStack {
                    Text("Alura Viagens")
                        .foregroundColor(Color.white)
                        .font(.custom("Avenir Black", size: horizontalSizeClass == .compact ? 20 : 30))
                        .padding(.top, horizontalSizeClass == .compact ? 30 : 90)
                    Text("ESPECIAL")
                        .foregroundColor(Color.white)
                        .font(.custom("Avenir Book", size: horizontalSizeClass == .compact ? 20 : 30))
                        .frame(minWidth: /*@START_MENU_TOKEN@*/0/*@END_MENU_TOKEN@*/, maxWidth: .infinity, alignment: .leading)
                        .padding(.leading, 30)
                    Text("BRASIL")
                        .foregroundColor(Color.white)
                        .font(.custom("Avenir Black", size: horizontalSizeClass == .compact ? 23 : 33))
                        .frame(minWidth: /*@START_MENU_TOKEN@*/0/*@END_MENU_TOKEN@*/, maxWidth: .infinity, alignment: .leading)
                        .padding(.leading, 30)
                }.frame(width: view.size.width, height: horizontalSizeClass == .compact ? 200 : 310, alignment: .top)
                    .background(Color.purple)
                
                HStack{
                    Button(  action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                        Text("Hotéis")
                            .font(.custom("Avenir Medium", size: horizontalSizeClass == .compact ? 17 : 24))
                            .foregroundColor(.white)
                            .frame(width: horizontalSizeClass == .compact ? 100 : 150, height: horizontalSizeClass == .compact ? 50 : 75)
                            .overlay(RoundedRectangle(cornerRadius: 10).stroke( Color.blue, lineWidth: 10))
                            .background(Color.blue)
                            .offset(x: horizontalSizeClass == .compact ? 50 : view.size.width/4)
                    })
                    Spacer()
                    Button(  action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                        Text("Pacotes")
                            .font(.custom("Avenir Medium", size: horizontalSizeClass == .compact ? 17 : 24))
                            .foregroundColor(.white)
                            .frame(width: horizontalSizeClass == .compact ? 100 : 150, height: horizontalSizeClass == .compact ? 50 : 75)
                            .overlay(RoundedRectangle(cornerRadius: 10).stroke( Color.orange, lineWidth: 10))
                            .background(Color.orange)
                            .offset(x: horizontalSizeClass == .compact ? -50 : -view.size.width/4)
                    })
                }.offset(y: horizontalSizeClass == .compact ? -35 : -50)
            }
        }
    }
}
#Preview {
    Group{
        HeaderView().environment(\.horizontalSizeClass, .compact)
            .previewLayout(.fixed(width: 400, height: 220))
        
        HeaderView().environment(\.horizontalSizeClass, .regular)
            .previewLayout(.fixed(width: 835, height: 310))
    }
   
}
