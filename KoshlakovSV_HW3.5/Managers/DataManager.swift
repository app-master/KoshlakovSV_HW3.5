//
//  DataManager.swift
//  KoshlakovSV_HW3.5
//
//  Created by Koshlakov Sergey on 04.08.2020.
//  Copyright © 2020 Koshlakov Sergey. All rights reserved.
//

import Foundation

protocol DataManagerProtocol {
    func generatePersons(_ count: Int) -> [Person]
}

final class DataManager {
    let firstNames = ["Bruce", "John", "Steven", "Aaron", "Tim", "Allan", "Sharon", "Ted", "Carl", "Nicola"]
    let lastNames = ["Butler", "Smith", "Black", "Robertson", "Murphy", "Williams", "Isaacson", "Jankin", "Pennyworth", "Dow"]
    let phones = ["+79260000000", "+79260000001", "+79260000002", "+79260000003", "+79260000004", "+79260000005", "+79260000006", "+79260000007", "+79260000008", "+79260000009"]
    let emails = ["aaa@mail.ru", "bbb@mail.ru", "ccc@mail.ru", "ddd@mail.ru", "eee@mail.ru", "fff@mail.ru", "ggg@mail.ru", "kkk@mail.ru", "mmm@mail.ru", "ttt@mail.ru"]
}

extension DataManager: DataManagerProtocol {
    func generatePersons(_ count: Int) -> [Person] {
        var persons: [Person] = []

        for _ in 0..<count {
            persons.append(
                Person(firstName: firstNames[Int.random(in: 0..<firstNames.count)],
                       lastName: lastNames[Int.random(in: 0..<lastNames.count)],
                       phone: phones[Int.random(in: 0..<phones.count)],
                       email: emails[Int.random(in: 0..<emails.count)])
            )
        }

        return persons
    }
}
