//
//  UserDatabaseManager.swift
//  Bikemate
//
//  Created by new on 2022/02/20.
//

import Firebase

class UserDatabaseManager {
    static let shared = UserDatabaseManager()
    
    var userArray: [OtherUserModel] = []
    
    private let rootRef = Database.database().reference()
    
    private init() {
        self.getAllUsers { userModelArray in
            self.userArray = userModelArray
        }
    }
    
    
    
    
    
    /* 모든 게시글 가져오기 (전체 글 열람)*/
    func getAllUsers(completion: @escaping (Array<OtherUserModel>) -> ()){
        
        rootRef.child("User").observeSingleEvent(of: .value, with: { snapshot in
            var otherUserModels: Array<OtherUserModel> = Array<OtherUserModel>()
            for child in snapshot.children {
                let dataSnapshot = child as? DataSnapshot
                let item = dataSnapshot?.value as? NSDictionary
                                
                let uid = dataSnapshot?.key ?? ""
                let email = item?["email"] as? String ?? ""
                let name = item?["name"] as? String ?? ""
                let age = item?["age"] as? Int ?? 20
                let gender = item?["gender"] as? Int ?? 0
                let changedGender = Gender(rawValue: gender)
                let location = item?["location"] as? Int ?? 0
                let changedLocation = Location(rawValue: location)
                let prefer_space = item?["prefer_space"] as? Int ?? 0
                let changed_prefer_space = Prefer_space(rawValue: prefer_space)
                let how_often = item?["how_often"] as? Int ?? 0
                let changed_how_often = How_often(rawValue: how_often)
                let prefer_time = item?["prefer_time"] as? Int ?? 0
                let changed_prefer_time = Prefer_time(rawValue: prefer_time)


                let otherUserModel = OtherUserModel(email: email, name: name, uid: uid, age: age, gender: changedGender!, location: changedLocation!, prefer_space: changed_prefer_space!, how_often: changed_how_often!, prefer_time: changed_prefer_time!, boardIds: [])
                otherUserModels.append(otherUserModel)
            }
            completion(otherUserModels)
        })
    }
    
}
