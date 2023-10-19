//
//  ContentView.swift
//  iOSCourse
//
//  Created by Sivenkov maxim  on 01.10.2023.
//

import SwiftUI

struct ContentView: View {

    @State private var isExpanded = false

    var body: some View {
        VStack {
            Button {
                withAnimation {
                    isExpanded.toggle()
                }
            } label: {
                ZStack {
                    Text("Open")
                        .opacity(isExpanded ? .zero : 1)
                        .background(.clear)
                        .foregroundColor(Color.white)

                    HStack {
                        Image(systemName: "arrowshape.backward.fill")
                        Text("Back")
                    }
                    .opacity(isExpanded ? 1 : .zero)
                    .foregroundColor(Color.white)
                }
            }
            .frame(width: 80, height: 40)
        }
        .frame(
            width: isExpanded ? 300 : 80,
            height: isExpanded ? 450 : 40,
            alignment: isExpanded ? .topLeading : .bottom
        )
        .padding(isExpanded ? 16 : .zero)
        .background(
            RoundedRectangle(cornerRadius: 16)
                .fill(.blue)
        )
        .position(x: isExpanded ? 195 : 330, y: isExpanded ? 350: 695)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
