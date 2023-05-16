//
//  CardView.swift
//  Scrumdinger
//
//  Created by Jean Paul on 15/05/23.
//

import SwiftUI

struct CardView: View {
    @Binding var scrum: DailyScrum
    
    var body: some View {
        VStack(alignment: .leading) {
            Text(scrum.title)
                .font(.headline)
            Spacer()
            HStack {
                Label("\(scrum.attendees.count)", systemImage: "person.3")
                Spacer()
                Label("\(scrum.lengthInMinutes)", systemImage: "clock")
            }
        }
        .foregroundColor(scrum.theme.accentColor)
    }
}

struct CardView_Previews: PreviewProvider {
    static let scrum = DailyScrum.sampleData[0]
    
    static var previews: some View {
        CardView(scrum: .constant(scrum))
            .background(scrum.theme.mainColor)
            .previewLayout(.fixed(width: 400, height: 60))
    }
}
