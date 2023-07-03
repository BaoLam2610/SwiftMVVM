//
//  UserViewModel.swift
//  DemoMVVM
//
//  Created by Lâm Bảo on 15/04/2023.
//

class UserViewModel {
    
    var url = "https://dummyjson.com/products"
    var products = [Product]()
    
    func getUsers(completion: @escaping () -> Void){
        NetworkManager.fetchData(urlString: url) { products, msg in
            if let products {
                self.products = products
                completion()
            } else {
                
            }
        }
    }
}
