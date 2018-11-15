
import Foundation
import Firebase
import FirebaseDatabase
class Database {
    // create a reference to firebase
    var ref: DatabaseReference!
    let ref = Database.database().reference()
    func updateUser(user:User) -> Void {
        let request :[String: Any?] = ["name": user.name,
                       "weeklyArrowCount": user.weeklyArrowCount,
//            "prevScoringRounds" : user.prevScoringRounds,
//            "SavedPresets" : user.SavedPresets,
//            "SavedJournalEntries" : user.SavedJournalEntries
        ]
        
        self.ref.child("users").child(user.uid).setValue(request)
        
    }
    // Look up the database and get the unique User
    // func getUser() -> User {
    //   // to do: get all the info of User and return a User object?
    //   let userID = Auth.auth().currentUser?.uid
    //   ref.child("users").child(userID!).observeSingleEvent(of: .value, with: { (snapshot) in
    //   // Get user value
    //   let value = snapshot.value as? NSDictionary
    //   let username = value?["username"] as? String ?? ""
    //   let user = User(username: username)
    
    //   // ...
    // }) { (error) in
    // print(error.localizedDescription)
    // }
    
    // }
}

