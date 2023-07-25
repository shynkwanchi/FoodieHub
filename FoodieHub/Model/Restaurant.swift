/*
  RMIT University Vietnam
  Course: COSC2659 iOS Development
  Semester: 2023B
  Assessment: Assignment 1
  Author: Nguyen Quang Duy
  ID: 3877991
  Created  date: 25/07/2023
  Last modified: to be added
  Acknowledgement: None
*/

import Foundation
import SwiftUI

struct Restaurant: Identifiable, Codable {
    var id: Int
    var title: String
    var subtitle: String
    var logoImage: String
    var address: String
    var openTime: String
    var closeTime: String
    var link: String
    var rating: Double
    var about: String
    var galleryImages: [String]
    var latitude: Double
    var longitude: Double
}
