//
//  StarWarsData.swift
//  StarWars
//
//  Created by Matthew Tseng on 2021-05-28.
//

import SwiftUI

enum Endpoint: String {
    case films = "films/"
    // Unused
    case starships = "starships/"
    case people = "people/"
    case vehicles = "vehicles/"
    case species = "species/"
    case planetes = "planets/"
}

class DataManager {
    let baseURL = "https://swapi.dev/api/"
    let decoder = JSONDecoder()
    
    // Returns the first page of data
    func getData<T : Codable>(endpoint: String, type: T.Type, completion: @escaping (T) -> ()) {
        guard let url = URL(string: baseURL + endpoint) else { return }
        
        URLSession.shared.dataTask(with: url) { data, response, error in
            // Check that data is received
            guard let data = data, error == nil else {
                print("Error with receiving data")
                return
            }
            
            
            guard let httpResponse = response as? HTTPURLResponse,
                      (200...299).contains(httpResponse.statusCode) else {
                print("Error with the response, unexpected status code: \(String(describing: response))")
              return
            }
            
            // Data has been received
            var result: T?
            
            do {
                result = try self.decoder.decode(T.self, from: data)
            }
            catch {
                // Error when decoding JSON
                debugPrint("getData() failed to decode, error: \(error)")
            }
            
            guard let result = result else { return }
            
            DispatchQueue.main.async {
                completion(result)
            }
        }.resume()
    }
    
    func getDataFromURL<T : Codable>(url: String, type: T.Type, completion: @escaping (T) -> ()) {
        guard let url = URL(string: url) else { return }
        
        URLSession.shared.dataTask(with: url) { data, response, error in
            // Check that data is received
            guard let data = data, error == nil else {
                print("Error with receiving data")
                return
            }
            
            guard let httpResponse = response as? HTTPURLResponse,
                      (200...299).contains(httpResponse.statusCode) else {
                print("Error with the response, unexpected status code: \(String(describing: response))")
              return
            }
            
            // Data has been received
            var result: T?
            
            do {
                result = try self.decoder.decode(T.self, from: data)
            }
            catch {
                // Error when decoding JSON
                debugPrint("getDataFromURL() failed to decode, error: \(error)")
            }
            
            guard let result = result else { return }
            
            DispatchQueue.main.async {
                completion(result)
            }
        }.resume()
    }
    
}
