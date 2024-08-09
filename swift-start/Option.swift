//
//  Option.swift
//  swift-start
//
//  Created by LEE JAEHA on 8/10/24.
//

import SwiftUI

struct Option: View {
    
    var adam: People? = People(name: "adam", mbti: MBTI(name: "INFJ"))
    var john = People(name: "john", petName: "john coco")
    var amy = People(name: "amy", petName: "amy coco")
    
    var body: some View {
        VStack {
//            if let adam = adam, let petName = adam.petName {
//                Text("\(adam.name) \(petName)")
//            } else if let adam = adam {
//                Text("\(adam.name) nil")
//            } else {
//                Text("Adam is nil")
//            }
            
            if let jaehaMbtiName = adam?.mbti?.name {
                Text("\(jaehaMbtiName)")
            } else {
                Text("no mbti name")
            }
        }
    }
}

struct People {
    let name: String
    let petName: String?
    var mbti: MBTI?
    
    init(name: String, petName: String? = nil, mbti: MBTI? = nil) {
        self.name = name
        self.petName = petName
        self.mbti = mbti
    }
}

struct MBTI {
    let name: String?
}

#Preview {
    Option()
}
