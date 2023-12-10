//
//  ContentView.swift
//  TrafficLight
//
//  Created by Kate on 10/12/2023.
//

import CoreData
import SwiftUI

struct ContentView: View {
    @State private var currentPosition = 1 // Начинаем с красного

    var body: some View {
        ZStack {
            Color.white.opacity(0.9).ignoresSafeArea()
            VStack {
                trafficLights
                Spacer()
                SwitchButtonView(label: currentPosition == 1 ? "Go" : "Next",
                                 action: switchAction)
            }.padding(EdgeInsets(top: 32, leading: 0, bottom: 32, trailing: 0))
        }.preferredColorScheme(.dark)
    }
}

extension ContentView {
    private var trafficLights: some View {
        VStack(spacing: 12) {
            ColorCircleView(color: .red,
                            opacity: currentPosition == 1 || currentPosition == 2 ? 1.0 : 0.3)
            ColorCircleView(color: .yellow,
                            opacity: currentPosition == 2 || currentPosition == 4 ? 1.0 : 0.3)
            ColorCircleView(color: .green,
                            opacity: currentPosition == 3 ? 1.0 : 0.3)
        }
    }

    private func switchAction() {
        currentPosition = (currentPosition % 4) + 1
    }
}
