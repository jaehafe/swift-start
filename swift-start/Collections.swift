//
//  Collections.swift
//  swift-start
//
//  Created by jaeha on 8/6/24.
//

import SwiftUI

struct Collections: View {
    
    var foods: [String] = ["eggs", "bananas", "beans"]
    var jazz: Set<String> = ["12", "122", "123123"]
    var hiphop: Set<String> = ["33", "44", "55"]
    var koEngDict: [String:String] = ["사과":"Apple"]
    
    @State private var intersectionDescription: String = ""
    
    var body: some View {
        VStack {
            
            Text(koEngDict["사과"]!)
            
            Text(hiphop.intersection(jazz).description)
                        
            Button(action: {
                let intersectionMusic = hiphop.intersection(jazz)
                intersectionDescription = intersectionMusic.description
            }, label: {
            Text("hit!")
            })
                        
            Text(intersectionDescription)
            
        }
    }
}

#Preview {
    Collections()
}
