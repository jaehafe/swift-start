//
//  Selection.swift
//  swift-start
//
//  Created by LEE JAEHA on 8/10/24.
//

import SwiftUI

struct Selection: View {
    
    @State var myDirection: Direction = .south
    
    var body: some View {
        switch myDirection {
        case .north:
            Text("북쪽")
        case .west:
            Text("서쪽")
        case .east:
            Text("동쪽")
        case .south:
            Text("남쪽")
        }
        
        Button {
            switch myDirection {
            case .north:
                myDirection = .east
            case .west:
                myDirection = .north
            case .east:
                myDirection = .south
            case .south:
                myDirection = .west
            }
        } label: {
            Text("돌리기")
        }
    }
}

enum Direction: String {
    case north = "북"
    case west = "서"
    case east = "동"
    case south = "남"
}

#Preview {
    Selection()
}
