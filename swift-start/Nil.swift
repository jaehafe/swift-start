//
//  Nil.swift
//  swift-start
//
//  Created by LEE JAEHA on 8/10/24.
//

import SwiftUI

struct Nil: View {
    
    var name: String = "jaeha"
    var petName: String? = "coco"
    
    var name2: String = "jaeha2"
    var petName2: String = "coco2"
    
    var body: some View {
        VStack {
            Text("이름은 \(name2) petname \(petName2)")
        }
        .onAppear {
            print("이름은 \(name) petName \(petName)")
            print("이름은 \(name2) petName \(petName2)")
        }
    }
}

#Preview {
    Nil()
}
