//
//  NumbersList.swift
//  KoshlakovSV_HW3.5
//
//  Created by Koshlakov Sergey on 05.08.2020.
//  Copyright © 2020 Koshlakov Sergey. All rights reserved.
//

import SwiftUI

struct NumbersList: View {
    var persons: [Person]

    var body: some View {

        List {
            ForEach(persons) { person in
                Section(header: Text("\(person.firstName) \(person.lastName)")) {
                    NumberView(imageName: "phone", text: person.phone)
                    NumberView(imageName: "tray", text: person.email)
                }
            }
        }
    }
}

struct NumbersList_Previews: PreviewProvider {
    static var previews: some View {
        NumbersList(persons: DataManager().generatePersons(10))
    }
}
