/*
  RMIT University Vietnam
  Course: COSC2659 iOS Development
  Semester: 2023B
  Assessment: Assignment 1
  Author: Nguyen Quang Duy
  ID: 3877991
  Created  date: 01/08/2023
  Last modified: to be added
  Acknowledgement: None
*/

import Foundation

func filter(searchText: String, rating: String) -> [Restaurant] {
    // Initialize the filtered data
    var matchedRestaurants : [Restaurant] = []
    
    // Check if user enters a string
    if (!searchText.isEmpty) {
        // If so, filter the restaurant based on title, subtitle or address
        matchedRestaurants = restaurants.filter{
            $0.title.localizedCaseInsensitiveContains(searchText) ||
            $0.subtitle.localizedCaseInsensitiveContains(searchText) ||
            $0.address.localizedCaseInsensitiveContains(searchText)
        }
    }
    else {
        // If not, retrieve all data
        matchedRestaurants = restaurants
    }
    
    // Check the rating options
    switch rating {
    case "< 4.0":
        return matchedRestaurants.filter{ $0.rating < 4.0 }
    case "4.0 to 4.5":
        return matchedRestaurants.filter{ $0.rating >= 4.0 && $0.rating <= 4.5 }
    case "> 4.5":
        return matchedRestaurants.filter{ $0.rating > 4.5 }
    default:
        return matchedRestaurants
    }
}
