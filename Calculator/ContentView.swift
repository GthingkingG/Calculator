//
//  ContentView.swift
//  Calculator
//
//  Created by Air on 4/1/25.
//

import SwiftUI

struct ContentView: View {
    @State var totalNumber: String = ""
    private var buttonData: [[String]] = [
        ["C", "+/-", "%", "/"],
        ["7", "8", "9", "X"],
        ["4", "5", "6", "-"],
        ["1", "2", "3", "+"],
        ["0", "0", ".", "="]
    ]
    var body: some View {
        ZStack{
            Color.black.ignoresSafeArea()
            VStack {
                
                Spacer()
                HStack {
                    Spacer()
                    Text(totalNumber)
                        .padding(10)
                        .font(.system(size: 60))
                        .foregroundColor(.white)
                }
                VStack {
                    ForEach(buttonData, id: \.self) {
                        line in
                        HStack {
                            ForEach(line, id: \.self)  {
                                row in
                                Button {
                                    if totalNumber == "0" {
                                        totalNumber = "7"
                                    } else {
                                        totalNumber += "7"
                                    }
                                } label: {
                                    Text(row)
                                        .frame(width: 80, height: 80)
                                        .background(.numberButton)
                                        .clipShape(Circle())
                                        .foregroundColor(.white)
                                        .font(.system(size: 33))
                                }
                            }
                        }
                    }
                }
            }
        }
    }
}

#Preview {
    ContentView()
}
