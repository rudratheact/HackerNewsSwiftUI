//
//  WebView.swift
//  HackerNewsSwiftUI
//
//  Created by Rudra Misra on 7/24/20.
//  Copyright © 2020 Rudra Misra. All rights reserved.
//

import Foundation
import WebKit
import SwiftUI

struct WebView: UIViewRepresentable {
    
    let urlString: String?
    
    func makeUIView(context: Context) -> WKWebView{
        return WKWebView()
    }
    func updateUIView(_ uiView: WKWebView, context: Context) {
        if let safeURL = urlString{
            if let url = URL(string: safeURL){
                let request = URLRequest(url: url)
                uiView.load(request)
            }
        }
    }
}
