//
//  File.swift
//  FoodieHub
//
//  Created by Duy Nguyen Quang on 25/07/2023.
//

import Foundation
import SwiftUI

struct Restaurant: Identifiable, Codable {
    var id: Int
    var name: String
    var slogan: String
    var logoName: String
}
