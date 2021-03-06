//  ExtraViews.swift
//  PruebaElektra
//  Created by Narciso Meza on 21/08/21.
import SwiftUI
import Kingfisher


/*
            Vista que muestra icono de Carga
*/
struct LoadingView: View {
    
    @State private var isLoading = false
    
    var body: some View {
        Circle()
            .trim(from: 0, to: 0.7)
            .stroke(Color.blue, lineWidth: 5)
            .frame(width: 100, height: 100)
            .rotationEffect(Angle(degrees: isLoading ? 360 : 0))
            .animation(Animation.linear(duration: 1).repeatForever(autoreverses: false))
            .onAppear() {
                self.isLoading = true
            }
    }
}

/*
            Vista inferior que segmenta Peliculas y Series
*/
struct TabBarIcon: View {
     
     let width, height: CGFloat
     let systemIconName, tabName: String
     
     var body: some View {
         VStack {
             Image(systemName: systemIconName)
                 .resizable()
                 .aspectRatio(contentMode: .fit)
                 .frame(width: width, height: height)
             Text(tabName)
                 .font(.footnote)
         }
     }
 }
