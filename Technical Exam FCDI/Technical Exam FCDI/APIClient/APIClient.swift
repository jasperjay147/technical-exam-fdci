//
//  APIClient.swift
//  Technical Exam FCDI
//
//  Created by Shammah Torregosa on 3/4/25.
//

import Foundation
import Alamofire

class APIClient {
    
    // MARK: - Init
    
    private init() { }
    
    // MARK: - Variables
    
    static let shared = APIClient()
    
    // MARK: - Functions
    
    func getCountries(completionHandler: @escaping ((Result<[Country], APIClientError>) -> ())) {
        guard let url = URL(string: "https://restcountries.com/v3.1/all") else {
            completionHandler(.failure(.invalidURL))
            return
        }
        
        AF.request(url, method: .get).response { response in
            switch response.result {
            case .success(let data):
                guard let data else {
                    completionHandler(.failure(.noData))
                    return
                }
                
                do {
                    let countries = try JSONDecoder().decode([Country].self, from: data)
                    completionHandler(.success(countries))
                } catch {
                    completionHandler(.failure(.parsingError))
                }
            case .failure(let error):
                completionHandler(.failure(.apiError(error)))
            }
        }
    }
}
