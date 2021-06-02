//
//  Species.swift
//  StarWars
//
//  Created by Matthew Tseng on 2021-05-28.
//

import SwiftUI

/*
 Attributes:

 name string -- The name of this species.
 classification string -- The classification of this species, such as "mammal" or "reptile".
 designation string -- The designation of this species, such as "sentient".
 average_height string -- The average height of this species in centimeters.
 average_lifespan string -- The average lifespan of this species in years.
 eye_colors string -- A comma-separated string of common eye colors for this species, "none" if this species does not typically have eyes.
 hair_colors string -- A comma-separated string of common hair colors for this species, "none" if this species does not typically have hair.
 skin_colors string -- A comma-separated string of common skin colors for this species, "none" if this species does not typically have skin.
 language string -- The language commonly spoken by this species.
 homeworld string -- The URL of a planet resource, a planet that this species originates from.
 people array -- An array of People URL Resources that are a part of this species.
 films array -- An array of Film URL Resources that this species has appeared in.
 url string -- the hypermedia URL of this resource.
 created string -- the ISO 8601 date format of the time that this resource was created.
 edited string -- the ISO 8601 date format of the time that this resource was edited.
 */

struct Species: Codable, Identifiable {
    let id = UUID()
    var count: Int
    var next: String?
    var previous: String?
    var results: [Specie]
}

// Singular form of species is species as well, but to make it easier, used Specie
struct Specie: Codable, Identifiable {
    let id = UUID()
    var name: String?
    var classification: String?
    var designation: String?
    var average_height: String?
    var average_lifespan: String?
    var eye_colors: String?
    var hair_colors: String?
    var skin_colors: String?
    var language: String?
    var homeworld: String?
    var people: [String]?
    var films: [String]?
    var url: String?
    var created: String?
    var edited: String?
}
