//
//  ThreeView.swift
//  MerryChristmasApp
//
//  Created by Самир Кафаров on 31.12.2022.
//

import SwiftUI

struct ThreeView: View {
    
    var body: some View {
        VStack(spacing: 0) {
            ZStack {
                AnimationView()
                    .ignoresSafeArea()
                SnowParticlesCles()
                VStack(spacing: -50) {
                    
                    Triangle()
                        .fill(.green)
                        .frame(width: 100, height: 100)
                    
                    Triangle()
                        .fill(.green)
                        .frame(width: 150, height: 120)
                    
                    Triangle()
                        .fill(.green)
                        .frame(width: 200, height: 140)
                    
                    Triangle()
                        .fill(.green)
                        .frame(width: 250, height: 160)
                }
                
                Group {
                    Star(corners: 5, smoothness: 3)
                        .fill(.yellow)
                        .frame(width: 30, height: 30)
                        .position(x: 196, y: 580)
                        .rotationEffect(Angle(degrees: 180))
                    ToysView()
                }
                Rectangle()
                    .fill(Color(.brown))
                    .position(x:12, y:305)
                    .frame(width: 30, height: 120)
            }
            
        }
    }
}

struct ThreeView_Previews: PreviewProvider {
    static var previews: some View {
        ThreeView()
    }
}
