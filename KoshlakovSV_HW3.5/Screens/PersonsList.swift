//
//  PersonsList.swift
//  KoshlakovSV_HW3.5
//
//  Created by Koshlakov Sergey on 04.08.2020.
//  Copyright © 2020 Koshlakov Sergey. All rights reserved.
//

import SwiftUI

struct PersonsList: View {
    var persons: [Person]

    var body: some View {
        List(persons) { person in
            NavigationLink(destination: DetaisView(person: person)) {
                TextView(firstText: person.firstName, lastText: person.lastName)
            }
        }
    }
}


struct PersonsList_Previews: PreviewProvider {
    static var previews: some View {
        PersonsList(persons: DataManager().generatePersons(10))
    }
}
