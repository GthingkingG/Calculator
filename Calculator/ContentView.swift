//
//  ContentView.swift
//  Calculator
//
//  Created by Air on 4/1/25.
//

import SwiftUI

struct ContentView: View {
    @State var totalNumber: String = ""
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
                HStack {
                    Button {
                        totalNumber = "0"
                    } label: {
                        Text("C")
                            .frame(width: 80, height: 80)
                            .background(.gray)
                            .clipShape(Circle())
                            .foregroundColor(.black)
                            .font(.system(size: 33))
                    }
                    Button {
                        
                    } label: {
                        Text("+/-")
                            .frame(width: 80, height: 80)
                            .background(.gray)
                            .clipShape(Circle())
                            .foregroundColor(.black)
                            .font(.system(size: 33))
                    }
                    Button {
                        
                    } label: {
                        Text("%")
                            .frame(width: 80, height: 80)
                            .background(.gray)
                            .clipShape(Circle())
                            .foregroundColor(.black)
                            .font(.system(size: 33))
                    }
                    Button {
                        
                    } label: {
                        Text("/")
                            .frame(width: 80, height: 80)
                            .background(.orange)
                            .clipShape(Circle())
                            .foregroundColor(.white)
                            .font(.system(size: 33))
                    }
                }
                HStack {
                    Button {
                        if totalNumber == "0" {
                            totalNumber = "7"
                        } else {
                            totalNumber += "7"
                        }
                    } label: {
                        Text("7")
                            .frame(width: 80, height: 80)
                            .background(.numberButton)
                            .clipShape(Circle())
                            .foregroundColor(.white)
                            .font(.system(size: 33))
                    }
                    Button {
                        if totalNumber == "0" {
                            totalNumber = "8"
                        } else {
                            totalNumber += "8"
                        }
                    } label: {
                        Text("8")
                            .frame(width: 80, height: 80)
                            .background(.numberButton)
                            .clipShape(Circle())
                            .foregroundColor(.white)
                            .font(.system(size: 33))
                    }
                    Button {
                        if totalNumber == "0" {
                            totalNumber = "9"
                        } else {
                            totalNumber += "9"
                        }
                    } label: {
                        Text("9")
                            .frame(width: 80, height: 80)
                            .background(.numberButton)
                            .clipShape(Circle())
                            .foregroundColor(.white)
                            .font(.system(size: 33))
                    }
                    Button {
                        
                    } label: {
                        Text("X")
                            .frame(width: 80, height: 80)
                            .background(.orange)
                            .clipShape(Circle())
                            .foregroundColor(.white)
                            .font(.system(size: 33))
                    }
                }
                HStack {
                    Button {
                        if totalNumber == "0" {
                            totalNumber = "4"
                        } else {
                            totalNumber += "4"
                        }
                    } label: {
                        Text("4")
                            .frame(width: 80, height: 80)
                            .background(.numberButton)
                            .clipShape(Circle())
                            .foregroundColor(.white)
                            .font(.system(size: 33))
                    }
                    Button {
                        if totalNumber == "0" {
                            totalNumber = "5"
                        } else {
                            totalNumber += "5"
                        }
                    } label: {
                        Text("5")
                            .frame(width: 80, height: 80)
                            .background(.numberButton)
                            .clipShape(Circle())
                            .foregroundColor(.white)
                            .font(.system(size: 33))
                    }
                    Button {
                        if totalNumber == "0" {
                            totalNumber = "6"
                        } else {
                            totalNumber += "6"
                        }
                    } label: {
                        Text("6")
                            .frame(width: 80, height: 80)
                            .background(.numberButton)
                            .clipShape(Circle())
                            .foregroundColor(.white)
                            .font(.system(size: 33))
                    }
                    Button {
                        
                    } label: {
                        Text("-")
                            .frame(width: 80, height: 80)
                            .background(.orange)
                            .clipShape(Circle())
                            .foregroundColor(.white)
                            .font(.system(size: 33))
                    }
                }
                HStack {
                    Button {
                        if totalNumber == "0" {
                            totalNumber = "1"
                        } else {
                            totalNumber += "1"
                        }
                    } label: {
                        Text("1")
                            .frame(width: 80, height: 80)
                            .background(.numberButton)
                            .clipShape(Circle())
                            .foregroundColor(.white)
                            .font(.system(size: 33))
                    }
                    Button {
                        if totalNumber == "0" {
                            totalNumber = "2"
                        } else {
                            totalNumber += "2"
                        }
                    } label: {
                        Text("2")
                            .frame(width: 80, height: 80)
                            .background(.numberButton)
                            .clipShape(Circle())
                            .foregroundColor(.white)
                            .font(.system(size: 33))
                    }
                    Button {
                        if totalNumber == "0" {
                            totalNumber = "3"
                        } else {
                            totalNumber += "3"
                        }
                    } label: {
                        Text("3")
                            .frame(width: 80, height: 80)
                            .background(.numberButton)
                            .clipShape(Circle())
                            .foregroundColor(.white)
                            .font(.system(size: 33))
                    }
                    Button {
                        
                    } label: {
                        Text("+")
                            .frame(width: 80, height: 80)
                            .background(.orange)
                            .clipShape(Circle())
                            .foregroundColor(.white)
                            .font(.system(size: 33))
                    }
                }
                HStack {
                    Button {
                        totalNumber += "0"
                    } label: {
                        Text("0")
                            .frame(width: 80, height: 80)
                            .background(.numberButton)
                            .clipShape(Circle())
                            .foregroundColor(.white)
                            .font(.system(size: 33))
                    }
                    Button {
                        totalNumber += "0"
                    } label: {
                        Text("0")
                            .frame(width: 80, height: 80)
                            .background(.numberButton)
                            .clipShape(Circle())
                            .foregroundColor(.white)
                            .font(.system(size: 33))
                    }
                    Button {
                        
                    } label: {
                        Text(".")
                            .frame(width: 80, height: 80)
                            .background(.numberButton)
                            .clipShape(Circle())
                            .foregroundColor(.white)
                            .font(.system(size: 33))
                    }
                    Button {
                        
                    } label: {
                        Text("=")
                            .frame(width: 80, height: 80)
                            .background(.orange)
                            .clipShape(Circle())
                            .foregroundColor(.white)
                            .font(.system(size: 33))
                    }
                }
            }
        }
    }
}

#Preview {
    ContentView()
}
