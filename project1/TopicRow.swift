//
//  TopicRow.swift
//  project1
//
//  Created by Dmitriy Skorohodov on 05.09.2021.
//

import SwiftUI

struct TopicRow: View {
    
    var topic: Topic
    
    var body: some View {
        HStack {
            Image(systemName: "flame")
                .resizable()
                .frame(width: 25, height: 30, alignment: .center)
                .foregroundColor(.red)
                .padding(.trailing, 15)
            Text(topic.name)
                .lineLimit(2)
        }
        .padding()
    }
}

struct TopicRow_Previews: PreviewProvider {
    static var previews: some View {
        TopicRow(topic: topics[0])
    }
}
