//
//  Product.swift
//  UCWalkPOS
//
//  Created by MacBook Pro on 27/04/23.
//

import Foundation

struct Product:Identifiable{
    //generate id otomtis dari swift
    var id = UUID()
    var name: String
    var image: String
    var price:Int
}

//dummy data
var productList = [
Product(name: "ayam geprek", image: "ayamGeprek", price: 20000),
Product(name: "katsu ayam", image: "katsu", price: 18000),
Product(name: "tahu gejrot", image: "tahuGejrot", price: 15000),
Product(name: "Soda Chupa Chups", image: "chupacups", price: 10000),
Product(name: "Coca Cola", image: "cocacola", price: 8000),
Product(name: "lemon soda", image: "lemonsoda", price: 23000),
]
