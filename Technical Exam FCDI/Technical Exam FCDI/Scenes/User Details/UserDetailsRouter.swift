//
//  UserDetailsRouter.swift
//  Technical Exam FCDI
//
//  Created by Shammah Torregosa on 3/4/25.
//

import Foundation
import UIKit.UIViewController

class UserDetailsRouter {
    
    // MARK: - Init
    
    init(viewController: UIViewController) {
        self.viewController = viewController
    }
    
    // MARK: - Variables
    
    private weak var viewController: UIViewController?
    
}
