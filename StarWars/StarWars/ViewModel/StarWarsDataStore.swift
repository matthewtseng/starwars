//
//  StarWarsDataStore.swift
//  StarWars
//
//  Created by Matthew Tseng on 2021-05-30.
//

import SwiftUI
import Combine

class StarWarsDataStore: ObservableObject {
    // Storing data
    @Published var films = Films(count: -1, results: [])
    @Published var people: [[Person]] = Array(repeating: [], count: 6)
    @Published var species: [[Specie]] = Array(repeating: [], count: 6)
    @Published var planets: [[Planet]] = Array(repeating: [], count: 6)
    @Published var vehicles: [[Vehicle]] = Array(repeating: [], count: 6)
    @Published var starships: [[Starship]] = Array(repeating: [], count: 6)
    
    let data = DataManager()
    
    init() {
        getFilmData()
    }
    
    // use [weak self] for each API call to free up memory after retrieving data, related to retain cycles
    func getFilmData() {
        data.getData(endpoint: Endpoint.films.rawValue, type: Films.self) { films in
            self.films = films
            // Fetch characters for each film
            for film in 0..<self.films.count {
                for character in 0..<self.films.results[film].characters.count {
                    self.data.getDataFromURL(url: self.films.results[film].characters[character], type: Person.self) { person in
                        self.people[film].append(person)
                    }
                }
            }
            
            // Fetching species for each film
            for film in 0..<self.films.count {
                for species in 0..<self.films.results[film].species.count {
                    self.data.getDataFromURL(url: self.films.results[film].species[species], type: Specie.self) { specie in
                        self.species[film].append(specie)
                    }
                }
            }
            
            // Fetching planets for each film
            for film in 0..<self.films.count {
                for planets in 0..<self.films.results[film].planets.count {
                    self.data.getDataFromURL(url: self.films.results[film].planets[planets], type: Planet.self) { planet in
                        self.planets[film].append(planet)
                    }
                }
            }
            
            // Fetching vehicles for each film
            for film in 0..<self.films.count {
                for vehicles in 0..<self.films.results[film].vehicles.count {
                    self.data.getDataFromURL(url: self.films.results[film].vehicles[vehicles], type: Vehicle.self) { vehicle in
                        self.vehicles[film].append(vehicle)
                    }
                }
            }
            
            // Fetching starships for each film
            for film in 0..<self.films.count {
                for starships in 0..<self.films.results[film].starships.count {
                    self.data.getDataFromURL(url: self.films.results[film].starships[starships], type: Starship.self) { starship in
                        self.starships[film].append(starship)
                    }
                }
            }
        }
    }
}
