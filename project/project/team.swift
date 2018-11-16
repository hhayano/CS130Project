//still need to debug
//i will start debugging as soon as I get home
import Foundation
class Team {
    var uid:Int
    var team:String?
    
    init(_ uid:Int, _ team: String="") {
        self.uid = uid
        self.team = team
    }
    func updaterequest() -> [String: Any?] {
        let res:[String : Any?] = ["team": self.team]
        return res    
    }

    func addmember() -> [String: Any?] {
        let res:[String: Any?] = ["member": self.member]
        return res
    }

    // Api for getter method
    func getteam() -> String?{
        return self.team
    }
    
    
    // Api's for setter
    func setteam(_ team: String) -> Void {
        self.team = team
    }
    
        
    // Api for submit 
    func acceptJoinRequest() -> void {
        //update a user's team information
        Database_.addOrUpdateUser(self)
        //add a member to the team
        Database_.UpdateTeam(self)
    }
    //update team data and member data
    func removeTeamMember() -> void {
        //update a user's team to ""
        Database_.addOrUpdateUser(self)
        //delete a member from the team
        Database_.DeleteMemeber(self)
    }
    
    
}
