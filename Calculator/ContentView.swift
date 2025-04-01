//
//  ContentView.swift
//  Calculator
//
//  Created by Air on 4/1/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack{
            Color.black.ignoresSafeArea()
            VStack {
                
                Spacer()
                HStack {
                    Spacer()
                    Text("331,460")
                        .padding(10)
                        .font(.system(size: 60))
                        .foregroundColor(.white)
                }
                HStack {
                    Button {
                        
                    } label: {
                        Text("C")
                            .frame(width: 80, height: 80)
                            .background(.gray)
                            .clipShape(Circle())
                            .foregroundColor(.white)
                            .font(.system(size: 33))
                    }
                    Button {
                        
                    } label: {
                        Text("+/-")
                            .frame(width: 80, height: 80)
                            .background(.gray)
                            .clipShape(Circle())
                            .foregroundColor(.white)
                            .font(.system(size: 33))
                    }
                    Button {
                        
                    } label: {
                        Text("%")
                            .frame(width: 80, height: 80)
                            .background(.gray)
                            .clipShape(Circle())
                            .foregroundColor(.white)
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
                        
                    } label: {
                        Text("7")
                            .frame(width: 80, height: 80)
                            .background(.gray)
                            .clipShape(Circle())
                            .foregroundColor(.white)
                            .font(.system(size: 33))
                    }
                    Button {
                        
                    } label: {
                        Text("8")
                            .frame(width: 80, height: 80)
                            .background(.gray)
                            .clipShape(Circle())
                            .foregroundColor(.white)
                            .font(.system(size: 33))
                    }
                    Button {
                        
                    } label: {
                        Text("9")
                            .frame(width: 80, height: 80)
                            .background(.gray)
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
                        
                    } label: {
                        Text("4")
                            .frame(width: 80, height: 80)
                            .background(.gray)
                            .clipShape(Circle())
                            .foregroundColor(.white)
                            .font(.system(size: 33))
                    }
                    Button {
                        
                    } label: {
                        Text("5")
                            .frame(width: 80, height: 80)
                            .background(.gray)
                            .clipShape(Circle())
                            .foregroundColor(.white)
                            .font(.system(size: 33))
                    }
                    Button {
                        
                    } label: {
                        Text("6")
                            .frame(width: 80, height: 80)
                            .background(.gray)
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
                        
                    } label: {
                        Text("1")
                            .frame(width: 80, height: 80)
                            .background(.gray)
                            .clipShape(Circle())
                            .foregroundColor(.white)
                            .font(.system(size: 33))
                    }
                    Button {
                        
                    } label: {
                        Text("2")
                            .frame(width: 80, height: 80)
                            .background(.gray)
                            .clipShape(Circle())
                            .foregroundColor(.white)
                            .font(.system(size: 33))
                    }
                    Button {
                        
                    } label: {
                        Text("3")
                            .frame(width: 80, height: 80)
                            .background(.gray)
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
                        
                    } label: {
                        Text("0")
                            .frame(width: 80, height: 80)
                            .background(.gray)
                            .clipShape(Circle())
                            .foregroundColor(.white)
                            .font(.system(size: 33))
                    }
                    Button {
                        
                    } label: {
                        Text("0")
                            .frame(width: 80, height: 80)
                            .background(.gray)
                            .clipShape(Circle())
                            .foregroundColor(.white)
                            .font(.system(size: 33))
                    }
                    Button {
                        
                    } label: {
                        Text(".")
                            .frame(width: 80, height: 80)
                            .background(.gray)
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
