//
//  Product.swift
//  DemoMVVM
//
//  Created by Lâm Bảo on 15/04/2023.
//

import Foundation

struct Products : Codable{
    let products : [Product]
}


struct Product : Codable{
    let title: String
}
