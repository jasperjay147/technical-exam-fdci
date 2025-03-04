//
//  UserDetailsViewController.swift
//  Technical Exam FCDI
//
//  Created by Shammah Torregosa on 3/4/25.
//

import UIKit

class UserDetailsViewController: UIViewController {

    // MARK: - Lifecycle Methods
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setUpViews()
        setUpConstraints()
    }

    // MARK: - Views
    
    private var scrollView: UIScrollView!
    private var containerView: UIView!
    private var nameField: UserDetailsInputFieldView!
    private var regionField: UserDetailsInputFieldView!
    private var countryField: UserDetailsInputFieldView!
    
    // MARK: - Functions
    
    private func setUpViews() {
        scrollView = UIScrollView()
        view.addSubview(scrollView)
        
        containerView = UIView()
        containerView.backgroundColor = .white
        scrollView.addSubview(containerView)
        
        nameField = UserDetailsInputFieldView(mode: .name)
        containerView.addSubview(nameField)
        
        regionField = UserDetailsInputFieldView(mode: .region)
        containerView.addSubview(regionField)
        
        countryField = UserDetailsInputFieldView(mode: .country)
        containerView.addSubview(countryField)
    }
    
    private func setUpConstraints() {
        scrollView.edgesToSuperview()
        
        containerView.width(to: scrollView.frameLayoutGuide)
        containerView.edges(to: scrollView.contentLayoutGuide)
    }
}

