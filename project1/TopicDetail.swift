//
//  TopicDetail.swift
//  project1
//
//  Created by Dmitriy Skorohodov on 05.09.2021.
//

import Foundation
import SwiftUI

struct TopicDetail: View {
    
    var topic: Topic
    @State private var date = Date()
    
    var body: some View {
        ScrollView {
            VStack(alignment: .leading) {
                Text("Purpose")
                    .font(.title)
                    .padding()
                Text(topic.goal)
                    .padding(.leading)
                Divider()
                    .padding()
                Text("Description")
                    .font(.title)
                    .padding([.leading, .bottom])
                Text(topic.description)
                    .padding(.leading)
                Divider()
                    .padding()
                if let topicDate = topic.date {
                    DatePicker("Day", selection: $date, displayedComponents: [.date])
                        .datePickerStyle(GraphicalDatePickerStyle())
                        .allowsHitTesting(false)
                        .onAppear(perform: {
                            date = topicDate
                        })
                }
            }
            .navigationBarTitle("Detail Info", displayMode: .inline)
        }
        
    }
}

struct TopicDetail_Previews: PreviewProvider {
    static var previews: some View {
        TopicDetail(topic: topics[0])
    }
}
