//
//  Loop.swift
//  swift-start
//
//  Created by jaeha on 8/6/24.
//

import SwiftUI

struct Loop: View {
    
    let names: [String] = ["1", "2", "3"," 4", "5"]
    
    var body: some View {
        
        HStack {
            ForEach(names, id: \.self) { item in
                Text(item)
            }
        }
        
    }
}

#Preview {
    Loop()
}
