//
//  UserDetailsPresenter.swift
//  Technical Exam FCDI
//
//  Created by Shammah Torregosa on 3/4/25.
//

import Foundation

protocol UserDetailsView: AnyObject {
    
}

class UserDetailsPresenter {
    
    // MARK: - Init
    
    init(view: UserDetailsView, router: UserDetailsRouter) {
        self.view = view
        self.router = router
    }
    
    // MARK: - Variables
    
    private weak var view: UserDetailsView?
    private let router: UserDetailsRouter
    
    // MARK: - Functions
    
    // TODO: Fetch countries
    func fetchCountries() {
        
    }
}
