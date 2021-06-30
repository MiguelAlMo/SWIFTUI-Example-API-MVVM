//
//  PokemonCell.swift
//  SwiftUI example Pokemon
//
//  Created by Miguel Alarcon on 29/6/21.
//

import SwiftUI
import Kingfisher

struct PokemonCell: View {
    let pokemon: Pokemon
    let viewModel: PokemonViewModel
    
    var body: some View {
        ZStack {
            VStack (alignment: .trailing){
                Text(pokemon.name.capitalized)
                    .font(.headline)
                    .foregroundColor(.white)
                    .padding(.top,10)
                    .padding(.trailing)
                HStack {
                    
                    KFImage(URL(string: pokemon.imageUrl)).resizable()
                        .scaledToFit()
                        .frame(width: 70, height: 70)
                        .padding([.bottom,.leading],4)
                    Text(pokemon.type)
                        .font(.subheadline.bold())
                        .foregroundColor(.white)
                        .padding(.horizontal,16)
                        .padding(.vertical,6)
                        .overlay(RoundedRectangle(cornerRadius: 20).fill(Color.white.opacity(0.25)))
                        .frame(width: 100, height: 24)
                   
                }
            }
        }
        
        .background(Color(viewModel.backgroundColor(forType: pokemon.type)))
        .cornerRadius(12)
        .shadow(color: Color(viewModel.backgroundColor(forType: pokemon.type)), radius: 6, x: 0.0, y: 0.0)
    }
}

