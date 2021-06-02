//
//  FilmDetails.swift
//  StarWars
//
//  Created by Matthew Tseng on 2021-05-27.
//

import SwiftUI

struct FilmDetails: View {
    var film: Film
    var species: [Specie]
    var starships: [Starship]
    var vehicles: [Vehicle]
    var planets: [Planet]
    var people: [Person]
    
    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: 10) {
                VStack(alignment: .leading, spacing: 10) {
                    Text(film.title)
                        .fontWeight(.bold)
                        .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                    Text("Episode ID: \(String(film.episode_id))")
                    Text("Director: \(film.director)")
                    Text("Producer: \(film.producer)")
                    Text("Release Date: \(film.release_date)")
                }
                
                // API URLs
                // NOTE: Only details page of characters has been implemented, other buttons are dummies currently
                VStack(alignment: .leading, spacing: 10) {
                    Text("Characters: ")
                    ForEach(people) { person in
                        NavigationLink(
                            destination: CharacterDetails(person: person),
                            label: {
                                Text(person.name)
                            })
                    }
                }
                
                VStack(alignment: .leading, spacing: 10) {
                    Text("Species: ")
                    ForEach(species) { species in
                        Button(species.name ?? "") {
                            print("\(species.name ?? "") pressed")
                        }
                    }
                }
                
                VStack(alignment: .leading, spacing: 10) {
                    Text("Starships: ")
                    ForEach(starships) { starship in
                        Button(starship.name) {
                            print("\(starship.name) pressed")
                        }
                    }
                }
                
                VStack(alignment: .leading, spacing: 10) {
                    Text("Vehicles: ")
                    ForEach(vehicles) { vehicle in
                        Button(vehicle.name) {
                            print("\(vehicle.name) pressed")
                        }
                    }
                }
                
                VStack(alignment: .leading, spacing: 10) {
                    Text("Planets: ")
                    ForEach(planets) { planet in
                        Button(planet.name) {
                            print("\(planet.name) pressed")
                        }
                    }
                }
                
                Text("Created: \(film.created)")
                Text("Edited: \(film.edited)")
            }
        }
    }
}
