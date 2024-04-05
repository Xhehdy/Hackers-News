//
//  DetailView.swift
//  HackerNews
//
//  Created by Ikechukwu Zion on 03/04/2024.
//

import SwiftUI


struct DetailView: View {
    let url:String?
    var body: some View {
        WebView(urlString: url!)
    }
}

#Preview {
    DetailView(url: "Google.com")
}
