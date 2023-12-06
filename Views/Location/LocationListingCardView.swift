//
//  LocationListingCardView.swift
//  RickAndMorty
//
//  Created by Felix Martinez Casadiego on 12/11/23.
//

import SwiftUI

struct LocationListingCardView: View {
    var model: Location
    
    var body: some View {
        Text(model.name)
    }
}


