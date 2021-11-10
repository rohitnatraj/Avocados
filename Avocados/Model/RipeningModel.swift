//
//  RipeningModel.swift
//  Avocados
//
//  Created by Natraj, Rohit on 11/10/21.
//

import SwiftUI

struct Ripening: Identifiable {
    var id = UUID()
    var image: String
    var stage: String
    var title: String
    var description: String
    var ripeness: String
    var instruction: String
}
