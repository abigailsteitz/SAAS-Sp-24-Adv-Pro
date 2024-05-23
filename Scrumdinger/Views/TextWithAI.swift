//
//  DetailView.swift
//  Scrumdinger
//
//  Created by Andrew Morgan on 22/12/2020.
//

import SwiftUI

struct TextWithAI: View {
    @Binding var scrum: DailyScrum
    @State private var data = DailyScrum.Data()
    @State private var isPresented = false
    
    var body: some View {
        
        HStack {
            Label("\(scrum.attendees.count)", systemImage: "person.3")
                .accessibilityElement(children: .ignore)
                .accessibilityLabel(Text("Attendees"))
                .accessibilityValue(Text("\(scrum.attendees.count)"))
            
        }
    }
    
    struct DetailView_Previews: PreviewProvider {
        static var previews: some View {
            NavigationView {
                TextWithAI(scrum: .constant(DailyScrum.data[0]))
            }
        }
    }
}
