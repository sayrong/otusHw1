//
//  TopicsView.swift
//  project1
//
//  Created by Dmitriy Skorohodov on 05.09.2021.
//

import SwiftUI


struct TopicsView: View {
    
    @Binding var selectedTopic: Int?
    
    var body: some View {
        NavigationView {
            List(topics) { topic in
                NavigationLink(
                    destination: TopicDetail(topic: topic),
                    tag: topic.id,
                    selection: $selectedTopic) {
                    TopicRow(topic: topic)
                }
            }
            .navigationTitle("Lessons to review")
        }
    }
}

struct TopicsView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            TopicsView(selectedTopic: .constant(nil))
        }
    }
}
