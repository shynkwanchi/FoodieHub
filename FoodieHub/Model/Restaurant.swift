/*
  RMIT University Vietnam
  Course: COSC2659 iOS Development
  Semester: 2023B
  Assessment: Assignment 1
  Author: Nguyen Quang Duy
  ID: 3877991
  Created  date: 25/07/2023
  Last modified: 04/08/2023
  Acknowledgement: COSC2659's Lecture slides
*/

import Foundation

struct Restaurant: Identifiable, Codable {
    let id: Int
    let title, subtitle, category, logo, address: String
    let mapCoordinates: MapCoordinates
    let phoneNumber: String
    let businessHours: BusinessHours
    let website: String
    let description: String
    let photos: [String]
}

struct BusinessHours: Codable {
    let opening, closing: String
}

struct MapCoordinates: Codable {
    let latitude, longitude: Double
}
