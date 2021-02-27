//
//  ContentView.swift
//  Accessibility
//
//  Created by Scott Obara on 28/2/21.
//

import SwiftUI

struct ContentView: View {
    
    var body: some View {
        HStack {
            VStack {
                Text("Your score is")
                Text("1000")
                    .font(.title)
            }
            .accessibilityElement(children: .combine)
            //.accessibility(label: Text("Your score is 1000"))
            VStack {
                Text("Your score is")
                Text("1000")
                    .font(.title)
            }
            .accessibilityElement(children: .ignore)
            .accessibility(label: Text("Your score is 1000"))
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
