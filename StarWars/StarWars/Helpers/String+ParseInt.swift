//
//  String+ParseInt.swift
//  StarWars
//
//  Created by Matthew Tseng on 2021-05-29.
//

import SwiftUI

// Referenced from https://stackoverflow.com/a/41188366

extension String {
    var parseNumbers: String {
        return filter { "0"..."9" ~= $0 }
    }
}
