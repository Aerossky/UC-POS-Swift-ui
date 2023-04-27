//
//  ContentView.swift
//  UCWalkPOS
//
//  Created by MacBook Pro on 27/04/23.
//

import SwiftUI

struct ContentView: View {
    let columns = [GridItem(.adaptive(minimum:160),spacing: 20)]
    
    var body: some View {
        NavigationView{
            ScrollView {
                LazyVGrid(columns:columns, spacing: 20) {
                    ForEach(productList, id: \.id){product in
                        ProductCard(product : product)
                    }
                }
                .padding()
            }
            .navigationTitle("UC POS Menu")
        }
        .navigationViewStyle(StackNavigationViewStyle())
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
