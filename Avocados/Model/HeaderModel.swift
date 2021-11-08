//
//  HeaderModel.swift
//  Avocados
//
//  Created by Natraj, Rohit on 11/8/21.
//

import Foundation

// MARK: - Header Model
struct Header: Identifiable {
    var id = UUID()
    var image: String
    var headline: String
    var subHeadline: String
}
