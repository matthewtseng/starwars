//
//  CharacterDetails.swift
//  StarWars
//
//  Created by Matthew Tseng on 2021-06-01.
//

import SwiftUI

struct CharacterDetails: View {
    var person: Person
    var body: some View {
        VStack(alignment: .leading, spacing: 10) {
            Text(person.name)
                .fontWeight(.bold)
                .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
            Text("Birth year: \(person.birth_year)")
            Text("Gender: \(person.gender)")
            Text("Hair color: \(person.hair_color)")
            Text("Eye color: \(person.eye_color)")
            Text("Height: \(person.height)")
            Text("Mass: \(person.mass)")
        }
    }
}
