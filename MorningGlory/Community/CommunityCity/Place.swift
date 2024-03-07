//
//  Place.swift
//  Test02
//
//  Created by 张原溥 on 2021/11/28.
//

import SwiftUI
import MapKit

struct Place: Identifiable {
    
    var id = UUID().uuidString
    var placemark: CLPlacemark
}
