//
//  ModalView.swift
//  project1
//
//  Created by Dmitriy Skorohodov on 05.09.2021.
//

import UIKit
import SwiftUI
import SwiftyGif

/*
 Не нашел простого нативного способа отобразить gif.
 Возможно WebView?
 */
class ModalView: UIView {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        prepareView()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func prepareView() {
        guard let gif = try? UIImage(gifName: "clown.gif") else {
            return
        }
        let imageView = UIImageView(gifImage: gif, loopCount: 100)
        self.addSubview(imageView)
        imageView.translatesAutoresizingMaskIntoConstraints = false;
        imageView.widthAnchor.constraint(equalToConstant: 400).isActive = true
        imageView.heightAnchor.constraint(equalToConstant: 400).isActive = true
        imageView.centerXAnchor.constraint(equalTo: self.centerXAnchor).isActive = true
        imageView.centerYAnchor.constraint(equalTo: self.centerYAnchor).isActive = true
    }
    
}


struct ModalViewUI: UIViewRepresentable {
    
    func makeUIView(context: Context) -> UIView {
        return ModalView()
    }
    
    func updateUIView(_ uiView: UIView, context: Context) {
        
    }
    
}
