//
//  UserDetailsConfigurator.swift
//  Technical Exam FCDI
//
//  Created by Shammah Torregosa on 3/4/25.
//

import Foundation

class UserDetailsConfigurator {
    
    // MARK: - Init
    
    init() {
        
    }
    
    // MARK: - Functions
    
    func configure(_ viewController: UserDetailsViewController) {
        let router = UserDetailsRouter(viewController: viewController)
        let presenter = UserDetailsPresenter(view: viewController, router: router)
        viewController.presenter = presenter
    }
}
