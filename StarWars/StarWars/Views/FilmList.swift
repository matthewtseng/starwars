//
//  FilmList.swift
//  StarWars
//
//  Created by Matthew Tseng on 2021-05-27.
//

import SwiftUI

struct FilmList: View {
    @ObservedObject var starWarsStore = StarWarsDataStore()
    
    var body: some View {
        VStack {
            NavigationView {
                List(starWarsStore.films.results) { film in
                    NavigationLink(
                        destination: FilmDetails(film:
                                                    film,
                                                 species: starWarsStore.species[(Int(film.url.parseNumbers) ?? 0) - 1],
                                                 starships: starWarsStore.starships[(Int(film.url.parseNumbers) ?? 0) - 1],
                                                 vehicles: starWarsStore.vehicles[(Int(film.url.parseNumbers) ?? 0) - 1],
                                                 planets: starWarsStore.planets[(Int(film.url.parseNumbers) ?? 0) - 1],
                                                 people: starWarsStore.people[(Int(film.url.parseNumbers) ?? 0) - 1]
                        ),
                        label: {
                            Text(film.title)
                        })
                }
                .navigationBarTitle("Star Wars")
            }
        }
    }
}

struct FilmList_Previews: PreviewProvider {
    static var previews: some View {
        FilmList()
    }
}
