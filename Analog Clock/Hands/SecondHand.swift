//
//  SecondHand.swift
//  Analog Clock
//
//  Created by YeasirArefinTusher-11702 on 3/6/24.
//

import SwiftUI

struct SecondHand: View {
    
    @Binding var currentTime: Time
    
    var body: some View {
        Rectangle()
            .fill(Color.red)
            .clipShape(Capsule())
            .frame(width: 4, height: 210)
            .offset(y: -60)
            .rotationEffect(.degrees(Double(currentTime.seconds) * 6))
            .shadow(radius: 10)
    }
}

