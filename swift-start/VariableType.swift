//
//  VariableType.swift
//  swift-start
//
//  Created by jaeha on 8/6/24.
//

import SwiftUI

struct VariableType: View {
    
    var name: String = "Jaeha"
    var age: Int = 20
    var height: Float = 173.3
    var weight: Float = 76.6
    var havePet: Bool = false
    
    
    var body: some View {
        VStack {
            Text("ㅋ")
            Text(name)
            Text("\(age)")
            Text("\(height)")
            Text("\(weight)")
            Text("\(havePet.description)")
        }
    }
}

#Preview {
    VariableType()
}
