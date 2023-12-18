//
//  SwitchButtonView.swift
//  TrafficLight
//
//  Created by Kate on 10/12/2023.
//

import SwiftUI

struct SwitchButtonView: View {
    
    let label: String
    let action: () -> Void
    
    var body: some View {
        Button(action: action) {
            Text(label)
                .font(.title)
                .bold()
                .foregroundColor(.white)
        }
        .frame(width: 125, height: 60)
        .background(.black)
        .cornerRadius(30)
    }
}

struct SwitchButtonView_Previews: PreviewProvider {
    static var previews: some View {
        SwitchButtonView(label: "Go", action: {} )
    }
}
