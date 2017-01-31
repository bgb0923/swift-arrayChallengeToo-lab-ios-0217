//
//  Deli.swift
//  ArrayChallengeDeuce2
//
//  Created by Jim Campagno on 9/17/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//




class Deli {
    
    var line: [String] = []
    
    // 1
    func addNameToLine(name: String) -> String {
        
        if name == "Billy Cyrstal" || name == "Meg Ryan" {
            line.insert(name, at: 0)
            return "Welcome \(name)! You can sit wherever you like."
        } else {
            line.append(name)
        }
        
        if line[0] == name {
            return "Welcome \(name), you're first in line."
        } else {
            return "Welcome \(name), you're number \(line.index(of: name)) in line."
        }
    }
    
    
    // 2
    func nowServing() -> String {
        if line.isEmpty == true {
            return "There is no one to be served."
        } else {
            return "Now serving \(line[0])!"
        }
    }
    
    
    // 3
    func lineDescription() -> String {
        if line.isEmpty {
            return "The line is currently empty."
        } else {
            print ("The line is:")
            for x in line {
                print ("\(line.index(of: x)): x)")
            }
        }
        return "Done"
    }
}
