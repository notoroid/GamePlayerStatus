//
//  ContentView.swift
//  GamePlayerStatus
//
//  Created by 能登 要 on 2023/06/28.
//

import SwiftUI

struct ContentView: View {
    @ObservedObject var person: Person
    let nouvellePerson: NouvellePerson
    let nouvellePerson2: NouvellePerson2
    
    var body: some View {
        VStack {
            HStack {
                Image(systemName: "person.circle")
                    .imageScale(.large)
                Text("Now Status: \(nouvellePerson.status.description)")
            }
            
            List (Status.allCases, id: \.self){ status in
                Button {
                    self.nouvellePerson.status = status
                } label: {
                    Text(status.description)
                }
            }
            .listStyle(.plain)
        }
        .padding()
    }
}

#Preview {
    return ContentView(person: Person(), nouvellePerson: NouvellePerson(), nouvellePerson2: NouvellePerson2() )
}
