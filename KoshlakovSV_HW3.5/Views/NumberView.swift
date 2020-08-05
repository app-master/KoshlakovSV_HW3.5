//
//  NumberView.swift
//  KoshlakovSV_HW3.5
//
//  Created by Koshlakov Sergey on 05.08.2020.
//  Copyright © 2020 Koshlakov Sergey. All rights reserved.
//

import SwiftUI

struct NumberView: View {
    var imageName: String
    var text: String

    var body: some View {
        HStack(alignment: .center) {
            Image(systemName: imageName)
            .foregroundColor(.blue)
            Text(text)
        }
    }
}

struct NumberView_Previews: PreviewProvider {
    static var previews: some View {
        NumberView(imageName: "phone", text: "app@me.com")
    }
}
