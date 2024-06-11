//
//  ClockFace.swift
//  Analog Clock
//
//  Created by YeasirArefinTusher-11702 on 3/6/24.
//

import SwiftUI

struct ClockFace: View {
    var body: some View {
        ZStack {
            Circle()
                .stroke(lineWidth: 6)
                .shadow(radius: 10)   
            ForEach(0..<60) { tick in
                if(tick % 5 == 0){
                    Text("\(tick/5 == 0 ? 12: tick/5)")
                        .font(.largeTitle)
                        .rotationEffect(.degrees(Double(tick)*(-6)), anchor: .center)
                        .offset(y: -190)
                        .rotationEffect(.degrees(Double(tick)*6), anchor: .center)

                }
                Rectangle()
                    .fill(tick % 5 == 0 ? Color.white : Color.white)
                    .frame(width: tick % 5 == 0 ? 8 : 6, height: tick % 5 == 0 ? 25 : 15)
                    .offset(y: -250 + (tick % 5 == 0 ? 15 : 8))
                    .rotationEffect(.degrees(Double(tick) * 6))
                    .blendMode(.hardLight)
               
            }
            
            
            
        }
    }
}

#Preview {
    ClockFace()
}
