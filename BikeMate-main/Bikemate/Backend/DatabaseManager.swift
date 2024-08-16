//
//  DatabaseManager.swift
//  Bikemate
//
//  Created by 박진서 on 2022/01/23.
//

import FirebaseAuth
import FirebaseDatabase

class DatabaseManager {
    
    private let ref = Database.database().reference()
    
    static let shared = DatabaseManager()  //규칙 1
    
    private init() {
        
    } //규칙 2
    
    func login(email: String, password: String, loginSucceeded: (() -> Void)?, loginFailed: (() -> Void)?)
    {
        
        Auth.auth().signIn(withEmail: email, password: password) { authResult, error in
            if let error = error {
                print("Login Error : \(error)")
                loginFailed!()
            } else {
                //MARK: Todo DB에서 정보 가져오기
                self.ref.child("User").child(authResult!.user.uid).observeSingleEvent(of: .value) { DataSnapshot in
                    
                    let value = DataSnapshot.value as! [String: Any]
                    var userModel = UserModel.shared
                    userModel = UserModel(JSON: value)!
                    
                    loginSucceeded!()

                    
                }
                
            }
        }
    }
    
    
    func signUp(email: String, password: String, name: String, age: Int, gender: Gender, location: Location, prefer_space: Prefer_space, how_often: How_often, prefer_time: Prefer_time, signInSucceeded: (() -> Void)?, signInFailed: (() -> Void)?)
    {
        
        Auth.auth().createUser(withEmail: email, password: password) {
            
            authResult, error in
            
            if let error = error {
                print("SignUp Error : \(error)")
                signInFailed!()

            } else {
                //MARK: Todo DB에 정보 저장
                self.ref.child("User").child(authResult!.user.uid).setValue(["email": email, "name": name, "location": location.rawValue, "uid": authResult!.user.uid])
                
                

                signInSucceeded!()
            }
        }
    }
    

}
