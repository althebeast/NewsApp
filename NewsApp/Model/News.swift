//
//  News.swift
//  NewsApp
//
//  Created by Alperen Sarışan on 11.12.2023.
//

import Foundation

struct News: Identifiable{
    
    var id = UUID()
    var newsName: String
    var newsImage: String
    var newsLong: String
    
}
