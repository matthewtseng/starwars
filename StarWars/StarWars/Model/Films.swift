//
//  Films.swift
//  StarWars
//
//  Created by Matthew Tseng on 2021-05-27.
//

import SwiftUI

/*
 Attributes:

 title string -- The title of this film
 episode_id integer -- The episode number of this film.
 opening_crawl string -- The opening paragraphs at the beginning of this film.
 director string -- The name of the director of this film.
 producer string -- The name(s) of the producer(s) of this film. Comma separated.
 release_date date -- The ISO 8601 date format of film release at original creator country.
 species array -- An array of species resource URLs that are in this film.
 starships array -- An array of starship resource URLs that are in this film.
 vehicles array -- An array of vehicle resource URLs that are in this film.
 characters array -- An array of people resource URLs that are in this film.
 planets array -- An array of planet resource URLs that are in this film.
 url string -- the hypermedia URL of this resource.
 created string -- the ISO 8601 date format of the time that this resource was created.
 edited string -- the ISO 8601 date format of the time that this resource was edited.
 */

struct Films: Codable, Identifiable {
    let id = UUID()
    var count: Int
    var next: String?
    var previous: String?
    var results: [Film]
}

struct Film: Codable, Identifiable {
    let id = UUID()
    var title: String
    var episode_id: Int
    var opening_crawl: String
    var director: String
    var producer: String
    var release_date: String
    var species: [String]
    var starships: [String]
    var vehicles: [String]
    var characters: [String]
    var planets: [String]
    var created: String
    var edited: String
    var url: String
}
