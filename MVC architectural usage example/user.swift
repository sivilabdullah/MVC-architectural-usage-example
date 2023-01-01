//
//  user.swift
//  MVC architectural usage example
//
//  Created by abdullah's Monterey on 1.01.2023.
//

import Foundation
struct User {
    let name , username: String
    let age : Int
    let address: Address
}

struct Address {
    let city : String
    let country : String
}
