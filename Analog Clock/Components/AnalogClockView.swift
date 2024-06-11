//
//  AnalogClockView.swift
//  Analog Clock
//
//  Created by YeasirArefinTusher-11702 on 3/6/24.
//

import SwiftUI

struct AnalogClockView: View {
    var body: some View {
        
        ZStack {
            Text(" BJIT")
                .font(.caption)
                .offset(y: -100)
                .kerning(20)
            ClockFace()
            ClockHands()
            
        }
        .frame(width: 500, height: 500)
        .frame(depth: 100, alignment: .back)
        .padding(20)
        .background(in: .circle, fillStyle: .init(eoFill: .random(), antialiased: true))
        .glassBackgroundEffect(in: .circle)
        
        
    }
}

#Preview {
    AnalogClockView()
}
