//
//  Condition.swift
//  swift-start
//
//  Created by jaeha on 8/6/24.
//

import SwiftUI

struct Condition: View {
    
    var hasLoggedIn = false
    var count = 4
    
    var body: some View {
        
        if hasLoggedIn {
            Text("로그아웃?")
        } else {
            Text("로그인?")
        }
        
    }
}

#Preview {
    Condition()
}
