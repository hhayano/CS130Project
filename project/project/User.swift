//
//  User.swift
//  project
//
//  Created by li yang on 11/14/18.
//  Copyright © 2018 Chungchhay Kuoch. All rights reserved.
//

import Foundation
class User {
    var uid:Int
    var name:String?
    var weeklyArrowCount:Int
//    var prevScoringRounds:[ScoringRound]
//    var SavedPresets:[Preset]
//    var SavedJournalEntries:[JournalEntry]
    
    init(_ uid:Int, _ name: String, _ weeklyArrowCount: Int) {
        self.uid = uid
        self.name = name
        self.weeklyArrowCount = weeklyArrowCount
    }
    
//    func addData(_ data: Preset) {
//        self.SavedPresets.append(data)
//    }
//
//    func addData(_ data: ScoringRound) {
//        self.prevScoringRounds.append(data)
//    }
//
//    func addData(_ data: JournalEntry) {
//        self.SavedJournalEntries.append(data)
//    }
//
//    func addData(_ data: JournalEntry) {
//        self.SavedJournalEntries.append(data)
//    }
}
