//
//  BackgroundApp.swift
//  Traffic lights UI
//
//  Created by Виталий Сосин on 21.07.2020.
//  Copyright © 2020 Vitalii Sosin. All rights reserved.
//

import SwiftUI

struct BackgroundApp: View {
    var body: some View {
        Color(#colorLiteral(red: 0.05882352963, green: 0.180392161, blue: 0.2470588237, alpha: 1))
            .edgesIgnoringSafeArea(.all)
    }
}

struct BackgroundApp_Previews: PreviewProvider {
    static var previews: some View {
        BackgroundApp()
    }
}
