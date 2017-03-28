//
//  ViewController.swift
//  AC3.2-TDD_Intro
//
//  Created by Ana Ma on 3/28/17.
//  Copyright © 2017 C4Q. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func numberOfVowels(_ str: String) -> Int {
        let vowels: [Character] = ["a", "e", "i", "o", "u", "A", "E", "I", "O", "U"]
//        //Start with the longest form of the function
//        return str.characters.reduce(0) { (result, char) -> Int in
//            if vowels.contains(char) {
//                return result + 1
//            }
//            return result
//        }
        
//        //Use reduce
//        var vowelCounter = 0
//        for c in str.characters {
//            if vowels.contains(c) {
//                vowelCounter += 1
//            }
//        }
//        return vowelCounter
 
        //Use Super swift
        return str.characters.reduce(0){
            $0 + (vowels.contains($1) ? 1: 0)
        }
        
    }
    
    func capitalizeWords(_ str: String) -> String {
        let stringArray = str.components(separatedBy: " ")
        var arrStringToReturn = [String]()
        for s in stringArray {
            var string = ""
            for (index, c) in s.characters.enumerated() {
                if index == 0 {
                    string += String(c).capitalized
                } else {
                    string += String(c)
                }
            }
            arrStringToReturn.append(string)
        }
        return arrStringToReturn.joined(separator: " ")
    }

}

