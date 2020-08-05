//
//  NameView.swift
//  KoshlakovSV_HW3.5
//
//  Created by Koshlakov Sergey on 04.08.2020.
//  Copyright © 2020 Koshlakov Sergey. All rights reserved.
//

import SwiftUI

struct TextView: View {
    let firstText: String
    let lastText: String

    var body: some View {
        HStack {
            Text(firstText)
            Text(lastText)
        }
    }
}

struct NameView_Previews: PreviewProvider {
    static var previews: some View {
        TextView(firstText: "Ivan", lastText: "Ivanov")
    }
}
