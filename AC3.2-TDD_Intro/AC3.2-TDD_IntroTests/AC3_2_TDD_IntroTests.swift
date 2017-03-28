//
//  AC3_2_TDD_IntroTests.swift
//  AC3.2-TDD_IntroTests
//
//  Created by Ana Ma on 3/28/17.
//  Copyright © 2017 C4Q. All rights reserved.
//

import XCTest
@testable import AC3_2_TDD_Intro

class AC3_2_TDD_IntroTests: XCTestCase {
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    //Control option command G is the short cut for unit testing
    
    func countVowels(_ string: String) -> Int {
        return 0
    }
    
    func testVowelCount() {
        let vowelCount = 3
        let badVowelCount = 3
        
        XCTAssert(vowelCount == badVowelCount, "We should get an accurate vowel count")
    }
    
    func test_VowelCount_AnaShouldReturnThree() {
        let viewController = ViewController()
        let testString = "Ana"
        let numberOfVowels = viewController.numberOfVowels(testString)
        
        XCTAssertEqual(numberOfVowels, 2, "Vowel count should be accurate", file: "TDD_InterTests.swift", line: 42)
    }
    
    func test_AllWordsCapitalized() {
        let viewController = ViewController()
        
        let testString = "this is a string"
        let expectedString = "This Is A String"
        
        // this will fail until you write the function for it
        let resultString = viewController.capitalizeWords(testString)
        
        XCTAssertEqual(expectedString, resultString, "First letter of each word should be capitalized")
    }
    
    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
    }
    
    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }
    
}
