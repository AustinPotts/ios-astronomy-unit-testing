//
//  MockDataLoader.swift
//  AstronomyTests
//
//  Created by Austin Potts on 2/25/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

import Foundation
@testable import Astronomy

struct MockLoader: NetworkDataLoader {
    
    func loadData(from url: URL, completion: @escaping (Data?, URLResponse?, Error?) -> Void) {
        DispatchQueue.global().asyncAfter(deadline: .now() + 1) {
            completion(self.data, self.response, self.error)
        }
    }
    
    
    var data: Data?
    var response: HTTPURLResponse?
    var error: Error?
    

    
    func loadData(from request: URLRequest, completion: @escaping (Data?, HTTPURLResponse?, Error?) -> Void) {
        DispatchQueue.global().asyncAfter(deadline: .now() + 1) {
            completion(self.data, self.response, self.error)
        }
    }
    
}
