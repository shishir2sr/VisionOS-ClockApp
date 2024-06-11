//
//  HourHand.swift
//  Analog Clock
//
//  Created by YeasirArefinTusher-11702 on 3/6/24.
//

import SwiftUI

struct HourHand: View {
    @Binding var currentTime: Time
    var body: some View {
           Rectangle()
               .fill(Color.white)
               .clipShape(Capsule())
               .frame(width: 10, height: 125)
               .offset(y: -40)
               .rotationEffect(.degrees(Double(currentTime.hours % 12) * 30 + Double(currentTime.minutes) * 0.5))
               .shadow(radius: 5)
       }}

