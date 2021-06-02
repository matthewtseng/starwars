//
//  Starships.swift
//  StarWars
//
//  Created by Matthew Tseng on 2021-05-28.
//

import SwiftUI

/*
 Attributes:

 name string -- The name of this starship. The common name, such as "Death Star".
 model string -- The model or official name of this starship. Such as "T-65 X-wing" or "DS-1 Orbital Battle Station".
 starship_class string -- The class of this starship, such as "Starfighter" or "Deep Space Mobile Battlestation"
 manufacturer string -- The manufacturer of this starship. Comma separated if more than one.
 cost_in_credits string -- The cost of this starship new, in galactic credits.
 length string -- The length of this starship in meters.
 crew string -- The number of personnel needed to run or pilot this starship.
 passengers string -- The number of non-essential people this starship can transport.
 max_atmosphering_speed string -- The maximum speed of this starship in the atmosphere. "N/A" if this starship is incapable of atmospheric flight.
 hyperdrive_rating string -- The class of this starships hyperdrive.
 MGLT string -- The Maximum number of Megalights this starship can travel in a standard hour. A "Megalight" is a standard unit of distance and has never been defined before within the Star Wars universe. This figure is only really useful for measuring the difference in speed of starships. We can assume it is similar to AU, the distance between our Sun (Sol) and Earth.
 cargo_capacity string -- The maximum number of kilograms that this starship can transport.
 consumables *string
 The maximum length of time that this starship can provide consumables for its entire crew without having to resupply.
 films array -- An array of Film URL Resources that this starship has appeared in.
 pilots array -- An array of People URL Resources that this starship has been piloted by.
 url string -- the hypermedia URL of this resource.
 created string -- the ISO 8601 date format of the time that this resource was created.
 edited string -- the ISO 8601 date format of the time that this resource was edited.
 */

struct Starships: Codable, Identifiable {
    let id = UUID()
    var count: Int
    var next: String?
    var previous: String?
    var results: [Starship]
}

struct Starship: Codable, Identifiable {
    let id = UUID()
    var name: String
    var starship_class: String
    var manufacturer: String
    var cost_in_credits: String
    var length: String
    var crew: String
    var passengers: String
    var max_atmosphering_speed: String
    var hyperdrive_rating: String
    var MGLT: String
    var cargo_capacity: String
    var consumables: String
    var films: [String]
    var pilots: [String]
    var url: String
    var created: String
    var edited: String
}
