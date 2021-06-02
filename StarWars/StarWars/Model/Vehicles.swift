//
//  Vehicles.swift
//  StarWars
//
//  Created by Matthew Tseng on 2021-05-28.
//

import SwiftUI

/*
 Attributes:

 name string -- The name of this vehicle. The common name, such as "Sand Crawler" or "Speeder bike".
 model string -- The model or official name of this vehicle. Such as "All-Terrain Attack Transport".
 vehicle_class string -- The class of this vehicle, such as "Wheeled" or "Repulsorcraft".
 manufacturer string -- The manufacturer of this vehicle. Comma separated if more than one.
 length string -- The length of this vehicle in meters.
 cost_in_credits string -- The cost of this vehicle new, in Galactic Credits.
 crew string -- The number of personnel needed to run or pilot this vehicle.
 passengers string -- The number of non-essential people this vehicle can transport.
 max_atmosphering_speed string -- The maximum speed of this vehicle in the atmosphere.
 cargo_capacity string -- The maximum number of kilograms that this vehicle can transport.
 consumables *string
 The maximum length of time that this vehicle can provide consumables for its entire crew without having to resupply.
 films array -- An array of Film URL Resources that this vehicle has appeared in.
 pilots array -- An array of People URL Resources that this vehicle has been piloted by.
 url string -- the hypermedia URL of this resource.
 created string -- the ISO 8601 date format of the time that this resource was created.
 edited string -- the ISO 8601 date format of the time that this resource was edited.
 */

struct Vehicles {
    let id = UUID()
    var count: Int
    var next: String?
    var previous: String?
    var results: [Vehicle]
}

struct Vehicle: Codable, Identifiable {
    let id = UUID()
    var name: String
    var model: String
    var manufacturer: String
    var length: String
    var cost_in_credits: String
    var crew: String
    var passengers: String
    var max_atmosphering_speed: String
    var cargo_capacity: String
    var consumables: String
    var films: [String]
    var pilots: [String]
    var url: String
    var created: String
    var edited: String
}
