//
//  AnimationView.swift
//  MerryChristmasApp
//
//  Created by Самир Кафаров on 31.12.2022.
//

import SwiftUI

struct AnimationView: View {
    
    @State private var start = UnitPoint(x: 0, y: -2)
    @State private var end = UnitPoint(x: 4, y: 0)
    
    let timer = Timer.publish(every: 0.5, on: .main, in: .default).autoconnect()
    let colors = [
        Color.red,
        Color.blue
    ]
    var body: some View {
         LinearGradient(gradient: Gradient(colors: colors),
                        startPoint: start,
                        endPoint: end)
         .animation(Animation.easeInOut(duration: 6.0)
            .repeatForever()
         ).onReceive(timer, perform: { _ in
             self.start = UnitPoint(x: 1, y: 0)
             self.end = UnitPoint(x: 0, y: 2)
             self.start = UnitPoint(x: 1, y: 0)
         })
    }
}

struct AnimationView_Previews: PreviewProvider {
    static var previews: some View {
        AnimationView()
            .ignoresSafeArea()
    }
}
