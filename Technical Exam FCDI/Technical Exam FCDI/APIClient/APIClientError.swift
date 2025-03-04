//
//  APIClientError.swift
//  Technical Exam FCDI
//
//  Created by Shammah Torregosa on 3/4/25.
//

import Foundation

enum APIClientError: Error {
    case invalidURL
    case noData
    case parsingError
    case apiError(Error)
}
