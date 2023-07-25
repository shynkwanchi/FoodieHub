//
//  DetailList.swift
//  FoodieHub
//
//  Created by Duy Nguyen Quang on 25/07/2023.
//

import SwiftUI

struct DetailListItem: View {
    var body: some View {
        VStack(alignment: .leading) {
            HStack(alignment: .center) {
                Image(systemName: "mappin")
                    .padding(.trailing, 5.0)
                Text("Address")
            }
        }
    }
}

struct DetailListItem_Previews: PreviewProvider {
    static var previews: some View {
        DetailListItem()
    }
}
