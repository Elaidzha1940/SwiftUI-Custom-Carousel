//
//  Peaky Blinders.swift
//  SwiftUI Custom Carousel Slider
//
//  Created by Elaidzha Shchukin on 05.11.2022.
//

import SwiftUI

///Model & sample Data...

struct Peaky: Identifiable, Hashable {
    
    var id = UUID().uuidString
    var image: String
    var title: String
}

var peakys = [

    Peaky(image: "L5", title: "Tommy Shelby"),
    Peaky(image: "L3", title: "Shelby + Grace"),
    Peaky(image: "L7", title: "John Shelby"),
    Peaky(image: "L4", title: "Tommy Shelby"),
    Peaky(image: "L2", title: "Shelby"),
    Peaky(image: "L1", title: "Tommy Shelby"),
    
]
///Images are uploaded
