//
//  ExtraView.swift
//  project1
//
//  Created by Dmitriy Skorohodov on 05.09.2021.
//

import SwiftUI

struct ExtraView: View {
    @State var isActive: Bool = false
    
    var body: some View {
        Button("Show modal") {
            isActive.toggle()
        }
        .foregroundColor(.white)
        .padding()
        .background(LinearGradient(gradient: Gradient(colors: [Color.red, Color.blue]), startPoint: .leading, endPoint: .trailing))
        .cornerRadius(40)
        .sheet(isPresented: $isActive, content: {
            VStack(alignment:.trailing) {
                Button(action: {
                    isActive.toggle()
                }, label: {
                    Image(systemName: "xmark")
                        .font(.largeTitle)
                }).padding()
                ModalViewUI()
            }
            
        })
    }
}

struct ExtraView_Previews: PreviewProvider {
    static var previews: some View {
        ExtraView()
    }
}
