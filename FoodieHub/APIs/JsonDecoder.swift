/*
  RMIT University Vietnam
  Course: COSC2659 iOS Development
  Semester: 2023B
  Assessment: Assignment 1
  Author: Nguyen Quang Duy
  ID: 3877991
  Created  date: 28/07/2023
  Last modified: to be added
  Acknowledgement: COSC2659's Lecture slides, Tutorial's Sample solutions on Github [https://github.com/TomHuynhSG/SSET-Contact-List-iOS]
*/

import Foundation

func decodeDataFromJsonFile(jsonFileName: String) -> [Restaurant] {
    if let file = Bundle.main.url(forResource: jsonFileName, withExtension: nil) {
        if let data = try? Data(contentsOf: file) {
            do {
                let decoder = JSONDecoder()
                let decoded = try decoder.decode([Restaurant].self, from: data)
                return decoded
            }
            catch let error {
                fatalError("Failed to decode JSON: \(error)")
            }
        }
    } else {
        fatalError("Couldn't load \(jsonFileName) file")
    }
    return [] as [Restaurant]
}

var restaurants = decodeDataFromJsonFile(jsonFileName: "restaurantData.json")
