//
//  MyAnimationSwiftUIView.swift
//  AlphaFrameworkExample
//
//  Created by Gonzalo Linares Navarro on 29/03/22.
//

import SwiftUI

public struct MyAnimationSwiftUIView: View {
    
    let colors: [Color] = [.red, .green, .blue, .orange, .pink, .purple, .yellow]
    
    let customName: String
    
    public init(name: String) {
        customName = name
    }
    
    public var body: some View {
//        ScrollView(.horizontal, showsIndicators: false) {
//            HStack(spacing: .zero) {
//                ForEach(1..<20) { num in
//                    GeometryReader { geo in
//                        Text("\(customName) \(num)")
//                            .font(.largeTitle)
//                            .padding()
//                            .background(Color.red)
//                            .rotation3DEffect(.degrees(-geo.frame(in: .global).minX) / 4, axis: (x: 0, y: 1, z: 0))
//                    }
//                    .frame(width: 200, height: 200)
//                }
//            }
//        }
        
        GeometryReader { fullView in
            ScrollView {
                ForEach(0..<30) { index in
                    GeometryReader { geo in //this geometry is my current position to the global (geom.fram(in: .global). First minY is 48 because is the position in Y of the first object, then it will increment by 48
                        Text("\(customName) Row #\(index)")
                            .font(.title)
                            .frame(maxWidth: .infinity)
                            .background(colors[index % 7])
                            .rotation3DEffect(.degrees(moveDegress(index: index, geo: geo, fullView: fullView)), axis: (x: 0, y: 1, z: 0))
                    }
                    .frame(height: 40)
                }
            }
        }
    }
    
    func moveDegress(index: Int, geo: GeometryProxy, fullView: GeometryProxy) -> Double {
        print("Index: \(index) - minY: \(geo.frame(in: .global).minY) - minY-height/2: \(geo.frame(in: .global).minY - fullView.size.height / 2)")
        let test = (geo.frame(in: .global).minY - fullView.size.height / 2) / 5
        return test
    }
}

struct MyAnimationSwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        MyAnimationSwiftUIView(name: "Example")
    }
}
