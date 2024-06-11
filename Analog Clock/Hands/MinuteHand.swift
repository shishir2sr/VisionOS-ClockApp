//
//  MinuteHand.swift
//  Analog Clock
//
//  Created by YeasirArefinTusher-11702 on 3/6/24.
//

import SwiftUI

struct MinuteHand: View {
    @Binding var currentTime: Time
    var body: some View {
            Rectangle()
                .fill(Color.white)
                .clipShape(Capsule())
                .frame(width: 6, height: 175)
                .offset(y: -60)
                .rotationEffect(.degrees(Double(currentTime.minutes) * 6))
                .shadow(radius: 7)
        }
}

