//
//  UserDetailsInputFieldView.swift
//  Technical Exam FCDI
//
//  Created by Shammah Torregosa on 3/4/25.
//

import UIKit
import TinyConstraints

class UserDetailsInputFieldView: UIView {

    // MARK: - Init
    
    init(mode: Mode) {
        self.mode = mode
        
        super.init(frame: .zero)
        
        setUpViews()
        setUpConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    // MARK: - Enum
    
    enum Mode {
        case name
        case region
        case country
        
        var title: String {
            switch self {
            case .name:
                return "Name"
            case .region:
                return "Region"
            case .country:
                return "Country"
            }
        }
        
        var placeholder: String {
            switch self {
            case .name:
                return "Name"
            case .region:
                return "Select your region"
            case .country:
                return "Search"
            }
        }
        
        var error: String {
            switch self {
            case .name:
                return "Cannot contain alphanumeric characters"
            case .region:
                return "You must select a state"
            case .country:
                return "You must select a country"
            }
        }
    }

    // MARK: - Views
    
    private var stackView: UIStackView!
    private var titleLabel: UILabel!
    private var inputField: UITextField!
    private var errorLabel: UILabel!
    
    // MARK: - Variables
    
    private let mode: Mode
    
    // MARK: - Functions
    
    private func setUpViews() {
        stackView = UIStackView()
        stackView.axis = .vertical
        stackView.spacing = 5
        stackView.alignment = .center
        addSubview(stackView)
        
        titleLabel = UILabel()
        titleLabel.text = mode.title
        titleLabel.textColor = .black
        titleLabel.font = .systemFont(ofSize: 10)
        stackView.addArrangedSubview(titleLabel)
        
        inputField = UITextField()
        inputField.placeholder = mode.placeholder
        stackView.addArrangedSubview(inputField)
        
        errorLabel = UILabel()
        errorLabel.textColor = .systemRed
        errorLabel.text = mode.error
        errorLabel.isHidden = true
        stackView.addArrangedSubview(errorLabel)
    }
    
    private func setUpConstraints() {
        stackView.edgesToSuperview()
    }
}
