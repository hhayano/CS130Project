
import Foundation
import Firebase
import FirebaseDatabase
class Database_ {
    // create a reference to firebase
    
    static var ref:DatabaseReference! = Database.database().reference()
    
    static func updateUser(_ user:User) -> Void {
        let request :[String: Any?] = ["name": user.name,
                       "weeklyArrowCount": user.weeklyArrowCount,
//            "prevScoringRounds" : user.prevScoringRounds,
//            "SavedPresets" : user.SavedPresets,
//            "SavedJournalEntries" : user.SavedJournalEntries
        ]
        
        ref.child("users").child(String(user.uid)).setValue(request)
        
    }
     
     func getUser() -> User {
       // to do: get all the info of User and return a User object?
       let userID = Auth.auth().currentUser?.uid
       ref.child("users").child(userID!).observeSingleEvent(of: .value, with: { (snapshot) in
       // Get user value
       let value = snapshot.value as? NSDictionary
       let username = value?["username"] as? String ?? ""
       let user = User(username: username)
    
       // ...
     }) { (error) in
     print(error.localizedDescription)
     }
    
     }
}

