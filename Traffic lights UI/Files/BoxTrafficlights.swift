//
//  BoxTrafficlights.swift
//  Traffic lights UI
//
//  Created by Виталий Сосин on 21.07.2020.
//  Copyright © 2020 Vitalii Sosin. All rights reserved.
//

import SwiftUI

enum CurrentColor {
    case red
    case yellow
    case green
}

struct BoxTrafficlights: View {
    
    @State private var currentColor = CurrentColor.red
    @State private var textButton = "START"
    @State private var colorButton = Color.blue
    
    @State private var red = 0.3
    @State private var yellow = 0.3
    @State private var green = 0.3
    
    var body: some View {
        VStack {
            ZStack {
                Color(.black)
                    .frame(width: 150, height: 400, alignment: .center)
                    .border(Color.gray, width: 3)
                SignalColor(red: red, yellow: yellow, green: green)
            }
            
            Color(.black)
                .frame(width: 10, height: 300, alignment: .center)
                .padding(.top, -7)
            Color(.black)
                .frame(width: 100, height: 10, alignment: .center)
                .padding(.top, -10)
            
            Button(action: { self.setColor() }) {
                Text( textButton )
                    .padding(.leading, 70)
                    .padding(.trailing, 70)
                    .padding(.top, 5)
                    .padding(.bottom, 5)
                    .foregroundColor(.black)
                    .background(colorButton)
                    .font(.title)
                    .padding(5)
                    .border(colorButton, width: 3)
            }
        }
    }
    
    private func setColor() {
        switch currentColor {
        case .red:
            textButton = "NEXT"
            green = 0.3
            red = 1.0
            colorButton = .red
            currentColor = .yellow
        case .yellow:
            red = 0.3
            yellow = 1.0
            colorButton = .yellow
            currentColor = .green
        case .green:
            yellow = 0.3
            green = 1.0
            colorButton = .green
            currentColor = .red
        }
    }
}

struct BoxTrafficlights_Previews: PreviewProvider {
    static var previews: some View {
        BoxTrafficlights()
    }
}
