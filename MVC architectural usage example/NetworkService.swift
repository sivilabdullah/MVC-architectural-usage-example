//
//  NetworkService.swift
//  MVC architectural usage example
//
//  Created by abdullah's Monterey on 1.01.2023.
//

import Foundation
class NetworkService {
    static let shared = NetworkService()
    
    private init(){
        
    }
    public var user: User?
    func login(username: String, password: String, completion: @escaping(Bool) -> Void){
        DispatchQueue.global().async {
            sleep(2)
            DispatchQueue.main.async {
                if username == "abdullah" && password == "1234"{
                    self.user = User(name: "Abdullah", username: "admin", age: 24, address:Address(city: "Adana", country: "turkey"))
                    completion(true)
                }else{
                    self.user = nil
                    completion(false)
                }
            }
        }
    }
}
