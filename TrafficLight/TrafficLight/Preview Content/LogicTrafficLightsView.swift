//
//  LogicTrafficLightsView.swift
//  TrafficLight
//
//  Created by Kate on 10/12/2023.
//

import SwiftUI

enum PresentColor {
    case red
    case redAndYellow
    case yellow
    case green
}

struct LogicTrafficLightsView: View {
    
    @State private var presentColor = PresentColor.red
    @State private var textButton = "Next"
    
    @State private var red = 0.3
    @State private var yellow = 0.3
    @State private var green = 0.3
    
    private let lightIsOn: CGFloat = 1
    private let lightIsOff: CGFloat = 0.3
    
    var body: some View {
        VStack{
            SignalTrafficLightsView(red: red, yellow: yellow, green: green)
            Spacer()
            Button(action: { setColor() }) {
                Text(textButton)
                    .padding()
                    .frame(width: 200)
                    .background(.blue)
                    .foregroundColor(.white)
                    .cornerRadius(15)
                    .font(.title)
                    .overlay(RoundedRectangle(cornerRadius: 15)
                        .stroke(.white, lineWidth: 4))
            }
        }
    }
    
    private func setColor() {
        switch presentColor {
        case .red:
            red = lightIsOn
            yellow = lightIsOff
            green = lightIsOff
            presentColor = .redAndYellow
        case .redAndYellow:
            red = lightIsOn
            yellow = lightIsOn
            green = lightIsOff
            presentColor = .yellow
        case .green:
            red = lightIsOff
            yellow = lightIsOff
            green = lightIsOn
            presentColor = .red
        case .yellow:
            red = lightIsOff
            yellow = lightIsOn
            green = lightIsOff
            presentColor = .green
        
        }
    }
}

struct LogicTrafficLightsView_Previews: PreviewProvider {
    static var previews: some View {
        LogicTrafficLightsView()
    }
}
