//
//  ContentView.swift
//  project1
//
//  Created by Dmitriy Skorohodov on 05.09.2021.
//

import SwiftUI

struct InfoView: View {
    
    @Binding var tabSelection: Int
    @Binding var selectedTopic: Int?
    
    var body: some View {
        VStack {
            Text("Have a nice day!")
                .font(.title)
            Image("profile")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .clipShape(Circle())
                .overlay(Circle().stroke(Color.gray))
                .shadow(radius: 8)
            Text("Dmitry Sk")
                .font(.callout)
            Button("Show current topic") {
                withAnimation {
                    tabSelection = 1
                    /*
                     Так и не нашел другого способа взаимодействовать с navigationLink
                     Проблема - переключение оч быстро происходят, поэтому async
                     */
                    DispatchQueue.main.asyncAfter(deadline: .now() + 0.2) {
                        selectedTopic = 0
                    }
                }
                
            }.padding()
        }
        
    }
}

struct InfoView_Previews: PreviewProvider {
    static var previews: some View {
        InfoView(tabSelection: .constant(0), selectedTopic: .constant(nil))
    }
}
