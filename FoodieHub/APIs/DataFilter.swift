/*
  RMIT University Vietnam
  Course: COSC2659 iOS Development
  Semester: 2023B
  Assessment: Assignment 1
  Author: Nguyen Quang Duy
  ID: 3877991
  Created  date: 01/08/2023
  Last modified: 05/08/2023
  Acknowledgement: None
*/

import Foundation

func filter(searchText: String, category: String) -> [Restaurant] {
    // Initialize the filtered data
    var matchedRestaurants : [Restaurant] = []
    
    // Check if user enters a string
    if (!searchText.isEmpty) {
        // If so, filter the restaurant based on title, subtitle or address
        matchedRestaurants = restaurants.filter{
            $0.title.localizedCaseInsensitiveContains(searchText) ||
            $0.subtitle.localizedCaseInsensitiveContains(searchText) ||
            $0.description.localizedCaseInsensitiveContains(searchText)
        }
    }
    else {
        // If not, retrieve all data
        matchedRestaurants = restaurants
    }
    
    // Check the rating options
    switch category {
    case "BBQ":
        return matchedRestaurants.filter{ $0.category == "BBQ" }
    case "Hotpot":
        return matchedRestaurants.filter{ $0.category == "Hotpot" }
    case "Sushi":
        return matchedRestaurants.filter{ $0.category == "Sushi" }
    case "Others":
        return matchedRestaurants.filter{ $0.category != "BBQ" && $0.category != "Hotpot" && $0.category != "Sushi" }
    default:
        return matchedRestaurants
    }
}
