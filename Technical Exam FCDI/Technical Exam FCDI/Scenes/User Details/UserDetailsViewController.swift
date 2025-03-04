//
//  UserDetailsViewController.swift
//  Technical Exam FCDI
//
//  Created by Shammah Torregosa on 3/4/25.
//

import UIKit

class UserDetailsViewController: UIViewController {

    // MARK: - Lifecycle Methods
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        
        configurator = .init()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        configurator.configure(self)
        
        setUpViews()
        setUpConstraints()
    }

    // MARK: - Views
    
    private var scrollView: UIScrollView!
    private var containerView: UIView!
    private var stackView: UIStackView!
    private var nameField: UserDetailsInputFieldView!
    private var regionField: UserDetailsInputFieldView!
    private var countryField: UserDetailsInputFieldView!
    
    // MARK: - Variables
    
    var presenter: UserDetailsPresenter!
    var configurator: UserDetailsConfigurator!
    
    // MARK: - Functions
    
    private func setUpViews() {
        scrollView = UIScrollView()
        view.addSubview(scrollView)
        
        containerView = UIView()
        containerView.backgroundColor = .white
        scrollView.addSubview(containerView)
        
        stackView = UIStackView()
        stackView.axis = .vertical
        stackView.spacing = 10
        stackView.alignment = .center
        containerView.addSubview(stackView)
        
        nameField = UserDetailsInputFieldView(mode: .name)
        stackView.addArrangedSubview(nameField)
        
        regionField = UserDetailsInputFieldView(mode: .region)
        stackView.addArrangedSubview(regionField)
        
        countryField = UserDetailsInputFieldView(mode: .country)
        stackView.addArrangedSubview(countryField)
    }
    
    private func setUpConstraints() {
        scrollView.edgesToSuperview()
        
        containerView.width(to: scrollView.frameLayoutGuide)
        containerView.edges(to: scrollView.contentLayoutGuide)
        
        nameField.widthToSuperview(multiplier: 0.8)
    }
}

// MARK: - UserDetailsView

extension UserDetailsViewController: UserDetailsView {
    
}
