//
//  NetworkManager.swift
//  DemoMVVM
//
//  Created by Lâm Bảo on 15/04/2023.
//

import Foundation

class NetworkManager {
    
    class func fetchData(urlString: String, completion: @escaping([Product]?, String?)-> Void) {
        guard let url = URL(string: urlString) else {return         }
        
        let task = URLSession.shared.dataTask(with: URLRequest(url: url)) { data, response,error in
            if let data {
                let dataModel = try? JSONDecoder().decode(Products.self, from: data)
                completion(dataModel?.products, nil)
            } else {
                completion(nil, "Error")
            }
        }
        task.resume()
    }
}
