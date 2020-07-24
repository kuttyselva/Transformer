//
//  ZalgoCharacters.swift
//  Transformer
//
//  Created by kutty selva on 25/07/20.
//  Copyright © 2020 kutty selva. All rights reserved.
//

import Foundation
struct ZalgoCharacters:Codable{
    let above:[String]
    let inline:[String]
    let below:[String]
    
    init(){
        let url = Bundle.main.url(forResource: "zalgo", withExtension: "json")!
        let data =  try! Data(contentsOf: url)
        let decoder = JSONDecoder()
        self = try! decoder.decode(ZalgoCharacters.self, from: data)
    }
}
