//
//  DoItTask.swift
//  JustDoIt
//
//  Created by woli on 31.08.2018.
//  Copyright © 2018 woli. All rights reserved.
//

class DoItTask : Equatable {
    static func == (lhs: DoItTask, rhs: DoItTask) -> Bool {
        return lhs.name == rhs.name && lhs.importance == rhs.importance
    }
    
    var name = ""
    var importance = false
}
