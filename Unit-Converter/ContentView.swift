//
//  ContentView.swift
//  Unit-Converter
//
//  Created by Supakrit Nutchanart on 11/1/2566 BE.
//

import SwiftUI

struct ContentView: View {
    @State var inputNumber: String = "";
    var body: some View {
        VStack {
            VStack {
                VStack {
                    Text("Unit Converter")
                        .font(.title)
                        .foregroundColor(.blue)
                        .fontWeight(.bold)
                }
                .padding()
                TextField("Input Number", text: $inputNumber)
                    .padding(.all)
                    .border(.blue)
            }.padding()
            HStack {
                Button("Reset") {
                    self.inputNumber = "";
                }
                .padding(.all)
                .border(.red)
                .foregroundColor(.blue)
                Button("Convert") {
                }                
                .padding(.all)
                .border(.green)
                .backgroundStyle(.pink)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
