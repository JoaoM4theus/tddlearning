//
//  User.swift
//  TDDEx
//
//  Created by Softbuilder Hibrido on 30/06/21.
//

import Foundation

enum NilCondition {
    case fNameIsNil
    case lNameIsNil
    case everythingIsNil
    case everythingIsFilled
}

class User {
    var firstName: String?
    var lastName: String?
    var nilCondition: NilCondition?
    lazy var names: [String] = [String]()
    
    init(firstName: String? = nil, lastName: String? = nil, nilCondition: NilCondition = .everythingIsNil) {
        self.firstName = firstName
        self.lastName = lastName
    }
    
    func checkNilConditions() {
        if self.firstName == nil && lastName != nil {
            nilCondition = .fNameIsNil
        }
        else if self.firstName != nil && lastName == nil {
            nilCondition = .lNameIsNil
        }
        else if self.firstName == nil && lastName == nil {
            nilCondition = .everythingIsNil
        } else {
            nilCondition = .everythingIsFilled
        }
    }
    
    func fillNames(count: Int) {
        for index in 0...count {
            names.append("Name \(index)")
        }
        print(names)
    }
    
}
