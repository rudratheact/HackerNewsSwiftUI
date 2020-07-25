//
//  PostData.swift
//  HackerNewsSwiftUI
//
//  Created by Rudra Misra on 7/23/20.
//  Copyright © 2020 Rudra Misra. All rights reserved.
//

import Foundation

struct Results: Decodable {
    let hits: [Post]
}

struct Post: Decodable, Identifiable {
    var id:String {
        return objectID
    }
    let objectID: String
    let points: Int
    let title: String
    let url: String?
}
