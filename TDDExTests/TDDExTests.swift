//
//  TDDExTests.swift
//  TDDExTests
//
//  Created by Joao Matheus on 30/06/21.
//

import XCTest
@testable import TDDEx

class TDDExTests: XCTestCase {
    var user: User!
    
    
    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
        user = User()
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        user = nil
    }
    
    func testFNameIsNil() {
        user.lastName = "Coder"
        user.checkNilConditions()
        var isStatus = false
        if user.nilCondition == .fNameIsNil{
             isStatus = true
        }
        
        XCTAssert(isStatus, "F is not nil, and case is failing")
    }
    
    func testLNameIsNil() {
        user.firstName = "iOS"
        user.checkNilConditions()
        var isStatus = false
        if user.nilCondition == .lNameIsNil {
             isStatus = true
        }
        
        XCTAssert(isStatus, "L is not nil, and case is failing")
    }
    
    func testEverythingIsNil() {
        user.firstName = "Coder"
        user.lastName = "iOS"
        user.checkNilConditions()
        var isStatus = false
        if user.nilCondition == .everythingIsFilled {
             isStatus = true
        }
        
        XCTAssert(isStatus, "something is nil, and case is failing")
    }
    
    func testEverythingIsFilled() {
        user.checkNilConditions()
        var isStatus = false
        if user.nilCondition == .everythingIsNil {
             isStatus = true
        }
        
        XCTAssert(isStatus, "something is not nil, and case is failing")
    }
    
    func testPerformanceofAppendingNames() {
        measure {
            user.fillNames(count: 10000)
        }
    }

}
