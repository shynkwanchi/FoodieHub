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

import SwiftUI

struct DetailItem: View {
    var icon, content: String
    
    var body: some View {
        HStack(alignment: .center) {
            Image(systemName: icon)
                .padding(.trailing, 5.0)
                .foregroundColor(.accentColor)
            Text(content)
                .font(Font.custom("NotoSerif-light", size: 18))
                .foregroundColor(Color("Secondary"))
        }
        .padding(.bottom, 5.0)
    }
}

struct DetailListItem_Previews: PreviewProvider {
    static var previews: some View {
        DetailItem(icon: "clock.fill", content: "10:00 - 22:00")
    }
}
