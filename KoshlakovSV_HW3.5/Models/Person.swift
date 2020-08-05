//
//  Person.swift
//  KoshlakovSV_HW3.5
//
//  Created by Koshlakov Sergey on 04.08.2020.
//  Copyright © 2020 Koshlakov Sergey. All rights reserved.
//

import Foundation

struct Person: Identifiable {
    let firstName: String
    let lastName: String
    let phone: String
    let email: String
    let id: String = UUID().uuidString
}
