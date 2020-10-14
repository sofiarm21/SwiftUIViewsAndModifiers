//
//  ContentView.swift
//  ViewsAndModifiers
//
//  Created by Sofia Rodriguez Morales on 10/14/20.
//

import SwiftUI

struct GridStack<Content:View> : View {
    var rows : Int
    var cols: Int
    var content : (Int, Int) -> Content
    var body: some View {
        
        VStack{
            ForEach (0..<rows) { row in
                HStack{
                    ForEach (0..<cols){ col in
                        self.content(row, col)
                    }
                }
            }
        }
    }
}

struct ContentView: View {
    var body: some View {
        GridStack(rows: 4, cols: 5){ row, col in
            HStack{
                Image(systemName: "\(row + col).circle")
                Text("\(row) \(col)")
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
