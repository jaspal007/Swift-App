//
//  ModelData.swift
//  testApp
//
//  Created by Jaspal Singh on 14/06/24.
//

import Foundation

var landmarks: [Landmark] = Load("landmarkData.json")

func Load<T: Decodable>(_ fileName: String) -> T {
    let data: Data
    guard let file = Bundle.main.url(forResource: fileName, withExtension: nil) 
    else {
        fatalError("Couldn't find \(fileName) in main bundle.")
    }
    
    do {
        data = try Data(contentsOf: file)
    } catch {
        fatalError("Failed to load \(fileName) from main bundle.")
    }
    
    do{
        let decoder = JSONDecoder()
        return try decoder.decode(T.self, from: data)
    }catch{
        fatalError("Couldn't parse \(fileName) as \(T.self): \n\(error)")
    }
}
