//
//  Model.swift
//  Youtube-Build
//
//  Created by Macbook Pro on 29.10.2020.
//  Copyright © 2020 Kostatyy. All rights reserved.
//

import Foundation

protocol ModelDelegate {
    func videosFetched(_ videos: [Video])
}

class Model {
    
    var delegate: ModelDelegate?
    
    func fetchVideos() {
        let url = URL(string: Constants.API_URL)
        
        guard url != nil else {
            return
        }
        
        let urlSession = URLSession.shared
        
        let dataTask = urlSession.dataTask(with: url!) { (data, resp, error) in
            if error != nil || data == nil {
                return
            }
            
            do {
                let decoder = JSONDecoder()
                decoder.dateDecodingStrategy = .iso8601
                
                let response = try decoder.decode(Response.self, from: data!)
                
                if response.items != nil {
                    self.delegate?.videosFetched(response.items!)
                }
                
            } catch {
                
            }
  
        }
        
        dataTask.resume()
        
    }
}
