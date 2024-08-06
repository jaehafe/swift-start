//
//  Half.swift
//  swift-start
//
//  Created by jaeha on 8/6/24.
//

import SwiftUI

struct Half: View {
    
    var name: String = "jaeha"
    var age: Int = 20
    
    var names: [String] = ["jaeha", "adam", "john"]
    
    var body: some View {
        VStack {
            HStack {
                Text("jaeha")
                Image(systemName: "pencil")
            }
            
            Text("Hi \(age) \(name)")
            List {
                ForEach(names, id: \.self) { name in
                    let welcome = sayHi(name: name)
                    if name == "jaeha" {
                        Text("기다렸어요 \(welcome)")
                    } else {
                        Text(welcome)
                    }
                    
                }
            }
        }
    }
    
    func sayHi(name: String) -> String {
        return "\(name)님 안녕하세요"
    }
}

#Preview {
    Half()
}
