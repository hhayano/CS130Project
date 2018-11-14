//
//  Member.swift
//  project
//
//  Created by li yang on 11/13/18.
//  Copyright © 2018 Chungchhay Kuoch. All rights reserved.
//

import Foundation


class User {
    var name:String?
    var weeklyArrowCount:Int
    var prevScoringRounds:[ScoringRound]
    var SavedPresets:[Preset]
    var SavedJournalEntries:[JournalEntry]
    var JoinRequests:[TeamProfile]

    init(_ name:String, _ weeklyArrowCount: Int ) {
        self.name = name
        self.weeklyArrowCount = weeklyArrowCount
    }
    func addData()
    func createNewPreset(newPreset: Preset) -> Void {
        self.SavedPresets.append(newPreset)
    }
    func createNewScoringRound() -> Void{
        self.prevScoringRounds.append(newScoringRound)
    }

  
}
