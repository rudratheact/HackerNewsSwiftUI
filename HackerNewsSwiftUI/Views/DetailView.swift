//
//  DetailView.swift
//  HackerNewsSwiftUI
//
//  Created by Rudra Misra on 7/24/20.
//  Copyright © 2020 Rudra Misra. All rights reserved.
//

import SwiftUI

struct DetailView: View {
    
    let url:String?
    
    var body: some View {
        WebView(urlString: url)
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView(url: "https://www.google.com")
    }
}

