//
//  ContentView.swift
//  swift-start
//
//  Created by jaeha on 8/6/24.
//

import SwiftUI

struct ContentView: View {
    
    var name: String = "Jaeha"
    
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text("\(name)님 안녕하세요")
            Text("\(name)님 안녕하세요")
            Text("\(name)님 안녕하세요")
            Text("\(name)님 안녕하세요")
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
