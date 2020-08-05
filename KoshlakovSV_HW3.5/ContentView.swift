//
//  ContentView.swift
//  KoshlakovSV_HW3.5
//
//  Created by Koshlakov Sergey on 04.08.2020.
//  Copyright © 2020 Koshlakov Sergey. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    let persons = DataManager().generatePersons(10)

    var body: some View {
        NavigationView {
            TabView {
                PersonsList(persons: persons)
                    .tabItem {
                        Image(systemName: "person.3.fill")
                        Text("Contacts")
                }
                NumbersList(persons: persons)
                    .tabItem {
                        Image(systemName: "phone")
                        Text("Numbers")
                }
            }
            .navigationBarTitle("Personal List")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
