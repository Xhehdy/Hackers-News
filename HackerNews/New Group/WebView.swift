//
//  WebView.swift
//  HackerNews
//
//  Created by Ikechukwu Zion on 05/04/2024.
//

import Foundation
import SwiftUI
import WebKit


struct WebView : UIViewRepresentable{
    let urlString : String?
    func makeUIView(context:Context) -> WKWebView {
        WKWebView()
    }
    func updateUIView(_ uiView: WKWebView, context:Context) {
        if let safeString = urlString {
            if let url  = URL(string: safeString){
                let request = URLRequest(url: url)
                uiView.load(request)
            }
        }
    }
    
    
}
