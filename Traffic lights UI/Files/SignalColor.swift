//
//  SignalColor.swift
//  Traffic lights UI
//
//  Created by Виталий Сосин on 20.07.2020.
//  Copyright © 2020 Vitalii Sosin. All rights reserved.
//

import SwiftUI

struct SignalColor: View {
    
    let red: Double
    let yellow: Double
    let green: Double
    
    var body: some View {
        VStack {
            Circle()
                .frame(width: 100, height: 100, alignment: .center)
                .foregroundColor(.red)
                .opacity(red)
            
            Circle()
                .frame(width: 100, height: 100, alignment: .center)
                .foregroundColor(.yellow)
                .opacity(yellow)
            
            Circle()
                .frame(width: 100, height: 100, alignment: .center)
                .foregroundColor(.green)
                .opacity(green)
        }
    }
}

struct TrafficLight_Previews: PreviewProvider {
    static var previews: some View {
        SignalColor(red: 1, yellow: 1, green: 1)
    }
}
