//
//  Diff.swift
//  swift-start
//
//  Created by LEE JAEHA on 8/9/24.
//

import SwiftUI

struct Diff: View {
    
    let myCar = Car(name: "car", owner: "Jaeha")
    @ObservedObject var myKar = Kar(name: "car2", owner: "123")
    @State var name: String = ""

    
    var body: some View {
        Text("\(myKar.name)의 주인인 \(myKar.owner) 입니다")
        
        TextField(/*@START_MENU_TOKEN@*/"Placeholder"/*@END_MENU_TOKEN@*/, text: $name)
        
        Button {
            
            let broCar = myKar
            broCar.name = "동생차"
            broCar.owner = "동생"
            myKar.sayHi()
        } label: {
            Text("출발")
        }
    }
}

struct Car {
    let name: String
    let owner: String
    
    func sayHi() {
        print("hi \(owner)")
    }
}

class Kar: ObservableObject {
    @Published var name: String
    @Published var owner: String
    
    func sayHi() {
        print("hi \(owner)2")
    }
    
    init(name: String, owner: String) {
        self.name = name
        self.owner = owner
    }
}

#Preview {
    Diff()
}
