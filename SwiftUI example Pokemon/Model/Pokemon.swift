//
//  Pokemon.swift
//  SwiftUI example Pokemon
//
//  Created by Miguel Alarcon on 29/6/21.
//

import Foundation

struct Pokemon: Decodable, Identifiable {
    let id: Int
    let name: String
    let imageUrl: String
    let type: String
}

let MOCK_POKEMON: [Pokemon] = [
    .init(id: 0, name: "Bulbasaur", imageUrl: "bulbasaur", type: "poison"),
    .init(id: 1, name: "jajajaja", imageUrl: "bulbasaur", type: "poison"),
    .init(id: 2, name: "asdasur", imageUrl: "bulbasaur", type: "poison"),
    .init(id: 3, name: "Bulfafur", imageUrl: "bulbasaur", type: "poison"),
    .init(id: 4, name: "aaaur", imageUrl: "bulbasaur", type: "poison"),
    .init(id: 5, name: "riririr", imageUrl: "bulbasaur", type: "poison"),
]
