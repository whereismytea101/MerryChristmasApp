//
//  ToysView.swift
//  MerryChristmasApp
//
//  Created by Самир Кафаров on 31.12.2022.
//

import SwiftUI


struct ToysView: View {
    @State private var start = false
    
    var body: some View {
        ZStack {
            BallsView(
                start: $start,
                color: .red,
                animation: .interpolatingSpring(
                    mass: 1,
                    stiffness: 100,
                    damping: 10,
                    initialVelocity: 0))
          //  .position(x: 102, y: 412)
            
//            Circle()
//                .fill(.red)
//                .position(x: 10, y: -110)
//                .frame(width: 20, height: 20)
//
//            Circle()
//                .fill(.red)
//                .position(x: -15, y: -80)
//                .frame(width: 25, height: 25)
//
//            Circle()
//                .fill(.yellow)
//                .position(x: 35, y: -85)
//                .frame(width: 25, height: 25)
//
//            Circle()
//                .fill(.red)
//                .position(x: 30, y: -30)
//                .frame(width: 30, height: 30)
//
//            Circle()
//                .fill(.yellow)
//                .position(x: 0, y: 100)
//                .frame(width: 30, height: 30)
//
//            Circle()
//                .fill(.yellow)
//                .position(x: -23, y: -10)
//                .frame(width: 30, height: 30)
//
//            Circle()
//                .fill(.red)
//                .position(x: 45, y: 44)
//                .frame(width: 35, height: 35)
//
//            Circle()
//                .fill(.red)
//                .position(x: -20, y: 70)
//                .frame(width: 60, height: 40)
//
//            Circle()
//                .fill(.red)
//                .position(x: 110, y: 140)
//                .frame(width: 60, height: 40)
//
//            Circle()
//                .fill(.yellow)
//                .position(x: -40, y: 160)
//                .frame(width: 60, height: 40)
            
        }
        onTapGesture {
            start.toggle()
        }
    }
}

struct ToysView_Previews: PreviewProvider {
    static var previews: some View {
        ToysView()
    }
}


struct BallsView: View {
    @Binding var start: Bool
    
    let color: Color
    let animation: Animation
    
    var body: some View {
        VStack {
            Image(systemName: "car.fill")
                .foregroundColor(color)
                .offset(x: start ? UIScreen.main.bounds.width - 200 : 0)
                .animation(animation, value: start)
        }
    }
    
}
