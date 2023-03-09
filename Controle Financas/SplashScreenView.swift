//
//  SplashScreenView.swift
//  Controle Financas
//
//  Created by Dev Wilson Fernandes on 05/02/23.
//

import SwiftUI

struct SplashScreenView: View {
    @State private var isActive = false
    @State private var size = 0.9
    @State private var opacity = 0.5
    
    func tintLogo() -> UIImage {
        let image = UIImage(named: "splash.logo")
        image?.withTintColor(.blue)
        return image!
    }
    
    
    var body: some View {
        if(isActive) {
            ContentView()
        } else {
            VStack{
                VStack {
                    Image(uiImage: tintLogo())
                        .renderingMode(Image.TemplateRenderingMode.template)
                        .foregroundColor(Color.orange)
                        .frame(width: 190, height:160)
                        .aspectRatio(CGSize(width:190, height: 160), contentMode: .fit)
//                    Text("Fison App")
//                        .font(Font.custom("Baskerville-Bold", size: 26))
//                        .foregroundColor(.brown.opacity(0.8))
                }
                .scaleEffect(size)
                .opacity(opacity)
                .onAppear {
                    withAnimation(.easeIn(duration: 3.0)) {
                        self.size = 2.0
                        self.opacity = 1.0
                    }
                }
            }
            .onAppear {
                DispatchQueue.main.asyncAfter(deadline: .now() + 3.0) {
                       isActive = true
                }
            }
        }
    }
}

struct SplashScreenView_Previews: PreviewProvider {
    static var previews: some View {
        SplashScreenView()
    }
}
