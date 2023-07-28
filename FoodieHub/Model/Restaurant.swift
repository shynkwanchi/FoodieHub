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

struct Restaurant: Identifiable, Codable {
    let id: Int
    let title, subtitle, logo, address: String
    let mapCoordinates: MapCoordinates
    let businessHours: BusinessHours
    let website: String
    let rating: Double
    let description: String
    let photos: [String]
}

struct BusinessHours: Codable {
    let opening, closing: String
}

struct MapCoordinates: Codable {
    let latitude, longitude: Double
}
