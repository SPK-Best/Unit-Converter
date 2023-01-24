//
//  ContentView.swift
//  Unit-Converter
//
//  Created by Supakrit Nutchanart on 11/1/2566 BE.
//

import SwiftUI

struct ContentView: View {
    @State var inputNumber: String = "";
    @State var resultNumber: String = "";
    var body: some View {
        VStack {
            VStack {
                VStack {
                    VStack {
                        Text("Unit Converter")
                            .font(.title)
                            .foregroundColor(.black)
                            .fontWeight(.bold)
                            .padding(.bottom)
                        Text("Convert number from KG to IBS.")
                            .font(.headline)
                            .foregroundColor(.black)
                            .fontWeight(.bold)
                            
                    }.padding()
                    TextField("Input Number", text: $inputNumber)
                        .padding(.all)
                        .border(.blue)
                        .keyboardType(.numberPad)
                }.padding()
                HStack {
                    Button("Reset") {
                        self.inputNumber = "";
                        self.resultNumber = "";
                    }
                    .font(.title3)
                    .padding(.all)
                    .border(.red)
                    .foregroundColor(.blue)
                    Button("Convert") {
                        let inputInDouble = Double(inputNumber);
                        var result = (inputInDouble ?? 0.0) * Double(2.2)
                        result = result.rounded(.up)
                        self.resultNumber = String(result) + " pounds";
                    }
                    .font(.title3)
                    .padding(.all)
                    .border(.green)
                    .backgroundStyle(.pink)
                }
            }.padding(.bottom)
            Text("Result")
                .font(.title)
                .fontWeight(.bold)
                .padding(.all)
            Text(resultNumber)
                .foregroundColor(.blue)
                .font(.title2)
                .fontWeight(.bold)
                .padding(.all)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
