//
//  ContentView.swift
//  Calculator
//
//  Created by Air on 4/1/25.
//

import SwiftUI

enum buttonType: String {
    case first, second, third, fourth, fifth, sixth, seventh, eighth, nineth, zero, dot, equal, plus, minus, multiple, divide,
         clear, opposite, percent
    var buttonDisplay: String {
        switch self {
        case .first:
            return "1"
        case .second:
            return "2"
        case .third:
            return "3"
        case .fourth:
            return "4"
        case .fifth:
            return "5"
        case .sixth:
            return "6"
        case .seventh:
            return "7"
        case .eighth:
            return "8"
        case .nineth:
            return "9"
        case .zero:
            return "0"
        case .dot:
            return "."
        case .equal:
            return "="
        case .plus:
            return "+"
        case .minus:
            return "-"
        case .multiple:
            return "X"
        case .divide:
            return "/"
        case .percent:
            return "%"
        case .opposite:
            return "+/-"
        case .clear:
            return "C"
        }
    }
    var buttonColor: Color {
        switch self {
        case .first, .second, .third, .fourth, .fifth, .sixth, .seventh, .eighth, .nineth, .zero, .dot:
            return .numberButton
        case .equal, .plus, .minus, .multiple, .divide:
            return .orange
        case .clear, .opposite, .percent:
            return .gray
        }
    }
    var foregrooundColor: Color {
        switch self {
        case .first, .second, .third, .fourth, .fifth, .sixth, .seventh, .eighth, .nineth, .zero, .dot, .equal, .plus, .minus, .multiple, .divide:
            return .white
        case .clear, .opposite, .percent:
            return .black
        }
    }
}

struct ContentView: View {
    @State var totalNumber: String = "0"
    @State var operatorType: buttonType = .clear
    @State var tempNumber: Int = 0
    private var buttonData: [[buttonType]] = [
        [.clear, .opposite, .percent, .divide],
        [.seventh, .eighth, .nineth, .multiple],
        [.fourth, .fifth, .sixth, .minus],
        [.first, .second, .third, .plus],
        [.zero, .dot, .equal]
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
                                    if row == .clear {
                                        totalNumber = "0"
                                    }
                                    else if totalNumber == "0" {
                                        if row == .plus || row == .minus || row == .multiple || row == .divide {
                                            totalNumber = "Error"
                                        } else {
                                            totalNumber = row.buttonDisplay
                                        }
                                    } else if row == .plus {
                                        tempNumber = Int(totalNumber) ?? 0
                                        totalNumber = "0"
                                        operatorType = .plus
                                    } else if row == .minus {
                                        tempNumber = Int(totalNumber) ?? 0
                                        totalNumber = "0"
                                        operatorType = .minus
                                    } else if row == .multiple {
                                        tempNumber = Int(totalNumber) ?? 0
                                        totalNumber = "0"
                                        operatorType = .multiple
                                    } else if row == .divide {
                                        tempNumber = Int(totalNumber) ?? 0
                                        totalNumber = "0"
                                        operatorType = .divide
                                    } else if row == .equal {
                                        if operatorType == .plus {
                                            totalNumber = String(tempNumber + (Int(totalNumber) ?? 0))
                                            operatorType = .equal
                                        } else if operatorType == .minus {
                                            totalNumber = String(tempNumber - (Int(totalNumber) ?? 0))
                                            operatorType = .equal
                                        } else if operatorType == .multiple {
                                            totalNumber = String(tempNumber * (Int(totalNumber) ?? 0))
                                            operatorType = .equal
                                        } else if operatorType == .divide {
                                            totalNumber = String(Double(tempNumber) / (Double(totalNumber) ?? 0))
                                            operatorType = .equal
                                        }
                                    } else {
                                        if operatorType == .equal {
                                            totalNumber = ""
                                            operatorType = .clear
                                        }
                                        totalNumber += row.buttonDisplay
                                    }
                                } label: {
                                    Text(row.buttonDisplay)
                                        .frame(width: calculateButtonWidth(button: row), height: calculateButtonHeight(button: row))
                                        .background(row.buttonColor)
                                        .clipShape(Capsule())
                                        .foregroundColor(row.foregrooundColor)
                                        .font(.system(size: 40))
                                }
                            }
                        }
                    }
                }
            }
        }
    }
    private func calculateButtonWidth(button: buttonType) -> CGFloat {
        switch button {
        case .zero:
            return ((UIScreen.main.bounds.width - 5 * 10 ) / 4) * 2
        default:
            return (UIScreen.main.bounds.width - 5 * 10 ) / 4
        }
    }
    private func calculateButtonHeight(button: buttonType) -> CGFloat {
        return (UIScreen.main.bounds.width - 5 * 10 ) / 4
    }
}

#Preview {
    ContentView()
}
