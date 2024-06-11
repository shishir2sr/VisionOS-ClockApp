//
//  ClockHands.swift
//  Analog Clock
//
//  Created by YeasirArefinTusher-11702 on 3/6/24.
//

import SwiftUI

struct ClockHands: View {
    @State private var currentTime = Time(hours: 0, minutes: 0, seconds: 0)
    
    var body: some View {
           ZStack {
               HourHand(currentTime: $currentTime)
               MinuteHand(currentTime: $currentTime)
               SecondHand(currentTime: $currentTime)
               Circle()
                   .fill(Color.red)
                   .frame(width: 15, height: 15, alignment: .center)
                   .glassBackgroundEffect(displayMode: .always)
                   .overlay(
                    Circle()
                        .fill(Color.white)
                        .frame(width: 7, height: 7, alignment: .center)
                        .glassBackgroundEffect(displayMode: .always)
                   )
                   
               
           }
          
           .onAppear {
               self.currentTime = Time.current
               Timer.scheduledTimer(withTimeInterval: 1.0, repeats: true) { _ in
                   self.currentTime = Time.current
               }
           }
       }
}

#Preview {
    ClockHands()
}


struct Time {
    var hours: Int
    var minutes: Int
    var seconds: Int
    
    static var current: Time {
        let calendar = Calendar.current
        let components = calendar.dateComponents([.hour, .minute, .second], from: Date())
        return Time(hours: components.hour ?? 0, minutes: components.minute ?? 0, seconds: components.second ?? 0)
    }
}
