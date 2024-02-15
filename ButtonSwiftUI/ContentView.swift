//
//  ContentView.swift
//  ButtonSwiftUI
//
//  Created by Teodoro Calle Lara on 15/02/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Button {
                debugPrint("Hola terricola")
            } label: {
                Text("Tap me".uppercased())
                    .padding()
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .foregroundStyle(.white)
                    .background(.red)
                    .cornerRadius(12)
                    .shadow(radius: 12)
            }
            
            Divider()
            
            Button("Tap me") {
                debugPrint("Hola marciano")
            }
            
            Divider()
            
            Button(action: {
                debugPrint("Like...")
            },label: {
                Circle()
                    .fill(.blue)
                    .frame(width: 200, height: 200)
                    .shadow(color: .yellow, radius: 20)
                    .overlay(
                        Image(systemName: "hand.thumbsup.fill")
                            .foregroundColor(.white)
                            .font(.system(size: 70, weight: .bold))
                    )
            })
        }
    }
}

#Preview {
    ContentView()
}
