//
//  Diff.swift
//  swift-start
//
//  Created by LEE JAEHA on 8/9/24.
//

import SwiftUI

struct Diff: View {
    
    let myCar = Car(name: "car", owner: "Jaeha")
    let myKar = Kar(name: "car2", owner: "123")

    
    var body: some View {
        Text("\(myKar.name)의 주인인 \(myKar.owner) 입니다")
        
        Button {
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

class Kar {
    let name: String
    let owner: String
    
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
