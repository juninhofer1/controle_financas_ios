//
//  ContentView.swift
//  Controle Financas
//
//  Created by Wilson Fernandes Cordova Junior on 22/11/22.
//

import SwiftUI

struct ContentView: View {
    var isActive = false
    @State var selectedDate: Date = Date()
    
    var body: some View {
        ZStack  {
            VStack (alignment: .center) {
                HStack (alignment: .top) {
                    Image("bgk_main_activity")
                        .resizable()
                        .scaledToFit()
                        .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .top)
                        .listRowInsets(EdgeInsets())
                }
            }.frame(maxWidth: .infinity, maxHeight: .infinity)
                .background(Color.white.ignoresSafeArea(edges: .bottom))
            
            VStack (alignment: .center) {
                HStack {
                    DatePicker("mini calendar", selection: $selectedDate, displayedComponents: .date)
                        .padding()
                        .datePickerStyle(GraphicalDatePickerStyle())
                        .colorScheme(.dark)
                        .colorMultiply(Color.white)
                        .accentColor(.orange)
                        .background(Color.blue)
                        .cornerRadius(15)
                        .frame(alignment: .top)
                        .scaleEffect(CGSize(width: 0.8, height: 0.8), anchor: .center)
                }
                Spacer()
                
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            
        }.background(Color.blue)
            .preferredColorScheme(.dark)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
