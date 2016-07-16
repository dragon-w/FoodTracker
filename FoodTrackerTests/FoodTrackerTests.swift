//
//  FoodTrackerTests.swift
//  FoodTrackerTests
//
//  Created by dragon-w on 16/7/9.
//  Copyright © 2016年 dragon-w. All rights reserved.
//
import XCTest
@testable import FoodTracker

class FoodTrackerTests: XCTestCase {
    
    // MARK: FoodTracker Tests
    func testMealInitialization(){
        
        //success case
        let potentialItem = Meal(name: "Newest meal", photo: nil, rating: 5)
        XCTAssertNotNil(potentialItem)
        
        
        //failure cases
        let noName = Meal(name: "", photo: nil, rating: 0)
        XCTAssertNil(noName,"Empty name is invalid")
        
        let badRating = Meal(name:"Really bad rating", photo: nil, rating: -1)
        XCTAssertNil(badRating)
    }
    
}
