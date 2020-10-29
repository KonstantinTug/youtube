//
//  Model.swift
//  Youtube-Build
//
//  Created by Macbook Pro on 29.10.2020.
//  Copyright © 2020 Kostatyy. All rights reserved.
//

import Foundation

class Model {
    func fetchVideos() {
        let url = URL(string: Constants.API_URL)
        
        guard url != nil else {
            return
        }
        
        let urlSession = URLSession.shared
        
        let dataTask = urlSession.dataTask(with: url!) { (data, response, error) in
            if error != nil || data == nil {
                return
            }
            
            
            
        }
        
        dataTask.resume()
        
    }
}
