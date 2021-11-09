//
//  FactsModel.swift
//  Avocados
//
//  Created by Natraj, Rohit on 11/8/21.
//

import SwiftUI

// MARK: - Fact Model

struct Fact: Identifiable {
    var id = UUID()
    var image: String
    var content: String
}
