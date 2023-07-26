//
//  DetailList.swift
//  FoodieHub
//
//  Created by Duy Nguyen Quang on 25/07/2023.
//

import SwiftUI

struct DetailListItem: View {
    var icon, content: String
    
    var body: some View {
        VStack(alignment: .leading) {
            HStack(alignment: .center) {
                Image(systemName: icon)
                    .padding(.trailing, 5.0)
                Text(content)
            }
        }
    }
}

struct DetailListItem_Previews: PreviewProvider {
    static var previews: some View {
        DetailListItem(icon: "mappin", content: "143 Phan Xich Long, Ward 7, Phu Nhuan District, Ho Chi Minh City")
    }
}
