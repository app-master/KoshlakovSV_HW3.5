//
//  DetaisView.swift
//  KoshlakovSV_HW3.5
//
//  Created by Koshlakov Sergey on 05.08.2020.
//  Copyright © 2020 Koshlakov Sergey. All rights reserved.
//

import SwiftUI

struct DetaisView: View {
    var person: Person

    var body: some View {
        Group {
            HStack {
                VStack(alignment: .leading, spacing: 20.0) {
                    TextView(firstText: "Phone:", lastText: person.phone)
                    TextView(firstText: "Email:", lastText: person.email)

                }
                .padding()

                Spacer()
            }
            Spacer()
        }
        .navigationBarTitle("\(person.firstName) \(person.lastName)", displayMode: .inline)
    }
}

struct DetaisView_Previews: PreviewProvider {
    static var previews: some View {
        DetaisView(person: DataManager().generatePersons(10).first!)
    }
}
