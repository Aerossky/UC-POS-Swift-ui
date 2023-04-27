//
//  ProductCard.swift
//  UCWalkPOS
//
//  Created by MacBook Pro on 27/04/23.
//

import SwiftUI

struct ProductCard: View {
    
    var product : Product
    
    var body: some View {
        ZStack(alignment: .topTrailing) {
            ZStack(alignment: .bottom){
                Image(product.image)
                    .resizable()
                    .cornerRadius(20)
                    .frame(width: 180)
                    .scaledToFit()
                
                VStack(alignment: .leading){
                    Text(product.name).bold()
                    
                    Text("RP. \(product.price)").font(.caption)
                }
                .padding()
                .frame(width: 180, height: 60)
                .background(.ultraThinMaterial)
                .cornerRadius(15)
                
            }
            .frame(width: 180, height: 250)
        .shadow(radius: 3)
            
            Button{
                
            }label: {
                Image(systemName: "plus")
                    .padding(10)
                    .foregroundColor(.white)
                    .background(.black)
                    .cornerRadius(50)
                    .padding()
                    .animation(.spring())
                    .scaleEffect(1.1)
                    .shadow(radius: 5)
                
                
                   
            }
        }
    }
}

struct ProductCard_Previews: PreviewProvider {
    static var previews: some View {
        ProductCard(product: productList[0])
    }
}
