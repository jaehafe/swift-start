//
//  Half.swift
//  swift-start
//
//  Created by jaeha on 8/6/24.
//

import SwiftUI

struct Half: View {
    
    var name: String = "jaeha2"
    var age: Int = 20
    
    var list: [String] = ["!!!", "222", "333"]
    
    var body: some View {
        VStack {
            HStack {
                Text("jaeha")
                Image(systemName: "pencil")
            }
            
            Text("Hi \(age) \(name)")
            List {
                ForEach(list, id: \.self) { item in
                    let welcome = sayHi(to: name)
                    Text(welcome)
                }
            }
        }
    }
    
    func sayHi(to name: String) -> String {
        return "\(name)님 안녕하세요"
    }
}

#Preview {
    Half()
}
